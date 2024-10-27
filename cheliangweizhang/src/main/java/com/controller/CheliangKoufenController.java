
package com.controller;

import java.io.File;
import java.math.BigDecimal;
import java.net.URL;
import java.text.SimpleDateFormat;
import com.alibaba.fastjson.JSONObject;
import java.util.*;
import org.springframework.beans.BeanUtils;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.context.ContextLoader;
import javax.servlet.ServletContext;
import com.service.TokenService;
import com.utils.*;
import java.lang.reflect.InvocationTargetException;

import com.service.DictionaryService;
import org.apache.commons.lang3.StringUtils;
import com.annotation.IgnoreAuth;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.entity.*;
import com.entity.view.*;
import com.service.*;
import com.utils.PageUtils;
import com.utils.R;
import com.alibaba.fastjson.*;

/**
 * 车辆扣分
 * 后端接口
 * @author
 * @email
*/
@RestController
@Controller
@RequestMapping("/cheliangKoufen")
public class CheliangKoufenController {
    private static final Logger logger = LoggerFactory.getLogger(CheliangKoufenController.class);

    private static final String TABLE_NAME = "cheliangKoufen";

    @Autowired
    private CheliangKoufenService cheliangKoufenService;


    @Autowired
    private TokenService tokenService;

    @Autowired
    private CheliangService cheliangService;//车辆
    @Autowired
    private CheliangWeizhangService cheliangWeizhangService;//车辆违章
    @Autowired
    private DictionaryService dictionaryService;//字典
    @Autowired
    private GonggaoService gonggaoService;//公告
    @Autowired
    private LiuyanService liuyanService;//留言板
    @Autowired
    private YonghuService yonghuService;//用户
    @Autowired
    private ZixunService zixunService;//资讯
    @Autowired
    private UsersService usersService;//管理员


    /**
    * 后端列表
    */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, HttpServletRequest request){
        logger.debug("page方法:,,Controller:{},,params:{}",this.getClass().getName(),JSONObject.toJSONString(params));
        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永不会进入");
        else if("用户".equals(role))
            params.put("yonghuId",request.getSession().getAttribute("userId"));
        CommonUtil.checkMap(params);
        PageUtils page = cheliangKoufenService.queryPage(params);

        //字典表数据转换
        List<CheliangKoufenView> list =(List<CheliangKoufenView>)page.getList();
        for(CheliangKoufenView c:list){
            //修改对应字典表字段
            dictionaryService.dictionaryConvert(c, request);
        }
        return R.ok().put("data", page);
    }

    /**
    * 后端详情
    */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id, HttpServletRequest request){
        logger.debug("info方法:,,Controller:{},,id:{}",this.getClass().getName(),id);
        CheliangKoufenEntity cheliangKoufen = cheliangKoufenService.selectById(id);
        if(cheliangKoufen !=null){
            //entity转view
            CheliangKoufenView view = new CheliangKoufenView();
            BeanUtils.copyProperties( cheliangKoufen , view );//把实体数据重构到view中
            //级联表 车辆
            //级联表
            CheliangEntity cheliang = cheliangService.selectById(cheliangKoufen.getCheliangId());
            if(cheliang != null){
            BeanUtils.copyProperties( cheliang , view ,new String[]{ "id", "createTime", "insertTime", "updateTime", "yonghuId"});//把级联的数据添加到view中,并排除id和创建时间字段,当前表的级联注册表
            view.setCheliangId(cheliang.getId());
            }
            //级联表 用户
            //级联表
            YonghuEntity yonghu = yonghuService.selectById(cheliangKoufen.getYonghuId());
            if(yonghu != null){
            BeanUtils.copyProperties( yonghu , view ,new String[]{ "id", "createTime", "insertTime", "updateTime", "yonghuId"});//把级联的数据添加到view中,并排除id和创建时间字段,当前表的级联注册表
            view.setYonghuId(yonghu.getId());
            }
            //修改对应字典表字段
            dictionaryService.dictionaryConvert(view, request);
            return R.ok().put("data", view);
        }else {
            return R.error(511,"查不到数据");
        }

    }

    /**
    * 后端保存
    */
    @RequestMapping("/save")
    public R save(@RequestBody CheliangKoufenEntity cheliangKoufen, HttpServletRequest request){
        logger.debug("save方法:,,Controller:{},,cheliangKoufen:{}",this.getClass().getName(),cheliangKoufen.toString());

        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永远不会进入");
        else if("用户".equals(role))
            cheliangKoufen.setYonghuId(Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId"))));



            CheliangEntity cheliangEntity = cheliangService.selectById(cheliangKoufen.getCheliangId());
            cheliangKoufen.setYonghuId(cheliangEntity.getYonghuId());
            cheliangKoufen.setInsertTime(new Date());
            cheliangKoufen.setCreateTime(new Date());
            cheliangKoufenService.insert(cheliangKoufen);
            return R.ok();
    }

    /**
    * 后端修改
    */
    @RequestMapping("/update")
    public R update(@RequestBody CheliangKoufenEntity cheliangKoufen, HttpServletRequest request) throws NoSuchFieldException, ClassNotFoundException, IllegalAccessException, InstantiationException {
        logger.debug("update方法:,,Controller:{},,cheliangKoufen:{}",this.getClass().getName(),cheliangKoufen.toString());
        CheliangKoufenEntity oldCheliangKoufenEntity = cheliangKoufenService.selectById(cheliangKoufen.getId());//查询原先数据

        String role = String.valueOf(request.getSession().getAttribute("role"));
//        if(false)
//            return R.error(511,"永远不会进入");
//        else if("用户".equals(role))
//            cheliangKoufen.setYonghuId(Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId"))));

            cheliangKoufenService.updateById(cheliangKoufen);//根据id更新
            return R.ok();
    }



    /**
    * 删除
    */
    @RequestMapping("/delete")
    public R delete(@RequestBody Integer[] ids, HttpServletRequest request){
        logger.debug("delete:,,Controller:{},,ids:{}",this.getClass().getName(),ids.toString());
        List<CheliangKoufenEntity> oldCheliangKoufenList =cheliangKoufenService.selectBatchIds(Arrays.asList(ids));//要删除的数据
        cheliangKoufenService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }


    /**
     * 批量上传
     */
    @RequestMapping("/batchInsert")
    public R save( String fileName, HttpServletRequest request){
        logger.debug("batchInsert方法:,,Controller:{},,fileName:{}",this.getClass().getName(),fileName);
        Integer yonghuId = Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId")));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            List<CheliangKoufenEntity> cheliangKoufenList = new ArrayList<>();//上传的东西
            Map<String, List<String>> seachFields= new HashMap<>();//要查询的字段
            Date date = new Date();
            int lastIndexOf = fileName.lastIndexOf(".");
            if(lastIndexOf == -1){
                return R.error(511,"该文件没有后缀");
            }else{
                String suffix = fileName.substring(lastIndexOf);
                if(!".xls".equals(suffix)){
                    return R.error(511,"只支持后缀为xls的excel文件");
                }else{
                    URL resource = this.getClass().getClassLoader().getResource("static/upload/" + fileName);//获取文件路径
                    File file = new File(resource.getFile());
                    if(!file.exists()){
                        return R.error(511,"找不到上传文件，请联系管理员");
                    }else{
                        List<List<String>> dataList = PoiUtil.poiImport(file.getPath());//读取xls文件
                        dataList.remove(0);//删除第一行，因为第一行是提示
                        for(List<String> data:dataList){
                            //循环
                            CheliangKoufenEntity cheliangKoufenEntity = new CheliangKoufenEntity();
//                            cheliangKoufenEntity.setCheliangId(Integer.valueOf(data.get(0)));   //车辆 要改的
//                            cheliangKoufenEntity.setYonghuId(Integer.valueOf(data.get(0)));   //用户 要改的
//                            cheliangKoufenEntity.setCheliangKoufenUuidNumber(data.get(0));                    //车辆扣分编号 要改的
//                            cheliangKoufenEntity.setCheliangKoufenTypes(Integer.valueOf(data.get(0)));   //扣分类型 要改的
//                            cheliangKoufenEntity.setCheliangKoufenContent("");//详情和图片
//                            cheliangKoufenEntity.setKoufenTime(sdf.parse(data.get(0)));          //扣分时间 要改的
//                            cheliangKoufenEntity.setCheliangKoufenNumber(Integer.valueOf(data.get(0)));   //分值 要改的
//                            cheliangKoufenEntity.setInsertTime(date);//时间
//                            cheliangKoufenEntity.setCreateTime(date);//时间
                            cheliangKoufenList.add(cheliangKoufenEntity);


                            //把要查询是否重复的字段放入map中
                                //车辆扣分编号
                                if(seachFields.containsKey("cheliangKoufenUuidNumber")){
                                    List<String> cheliangKoufenUuidNumber = seachFields.get("cheliangKoufenUuidNumber");
                                    cheliangKoufenUuidNumber.add(data.get(0));//要改的
                                }else{
                                    List<String> cheliangKoufenUuidNumber = new ArrayList<>();
                                    cheliangKoufenUuidNumber.add(data.get(0));//要改的
                                    seachFields.put("cheliangKoufenUuidNumber",cheliangKoufenUuidNumber);
                                }
                        }

                        //查询是否重复
                         //车辆扣分编号
                        List<CheliangKoufenEntity> cheliangKoufenEntities_cheliangKoufenUuidNumber = cheliangKoufenService.selectList(new EntityWrapper<CheliangKoufenEntity>().in("cheliang_koufen_uuid_number", seachFields.get("cheliangKoufenUuidNumber")));
                        if(cheliangKoufenEntities_cheliangKoufenUuidNumber.size() >0 ){
                            ArrayList<String> repeatFields = new ArrayList<>();
                            for(CheliangKoufenEntity s:cheliangKoufenEntities_cheliangKoufenUuidNumber){
                                repeatFields.add(s.getCheliangKoufenUuidNumber());
                            }
                            return R.error(511,"数据库的该表中的 [车辆扣分编号] 字段已经存在 存在数据为:"+repeatFields.toString());
                        }
                        cheliangKoufenService.insertBatch(cheliangKoufenList);
                        return R.ok();
                    }
                }
            }
        }catch (Exception e){
            e.printStackTrace();
            return R.error(511,"批量插入数据异常，请联系管理员");
        }
    }




    /**
    * 前端列表
    */
    @IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, HttpServletRequest request){
        logger.debug("list方法:,,Controller:{},,params:{}",this.getClass().getName(),JSONObject.toJSONString(params));

        CommonUtil.checkMap(params);
        PageUtils page = cheliangKoufenService.queryPage(params);

        //字典表数据转换
        List<CheliangKoufenView> list =(List<CheliangKoufenView>)page.getList();
        for(CheliangKoufenView c:list)
            dictionaryService.dictionaryConvert(c, request); //修改对应字典表字段

        return R.ok().put("data", page);
    }

    /**
    * 前端详情
    */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id, HttpServletRequest request){
        logger.debug("detail方法:,,Controller:{},,id:{}",this.getClass().getName(),id);
        CheliangKoufenEntity cheliangKoufen = cheliangKoufenService.selectById(id);
            if(cheliangKoufen !=null){


                //entity转view
                CheliangKoufenView view = new CheliangKoufenView();
                BeanUtils.copyProperties( cheliangKoufen , view );//把实体数据重构到view中

                //级联表
                    CheliangEntity cheliang = cheliangService.selectById(cheliangKoufen.getCheliangId());
                if(cheliang != null){
                    BeanUtils.copyProperties( cheliang , view ,new String[]{ "id", "createDate"});//把级联的数据添加到view中,并排除id和创建时间字段
                    view.setCheliangId(cheliang.getId());
                }
                //级联表
                    YonghuEntity yonghu = yonghuService.selectById(cheliangKoufen.getYonghuId());
                if(yonghu != null){
                    BeanUtils.copyProperties( yonghu , view ,new String[]{ "id", "createDate"});//把级联的数据添加到view中,并排除id和创建时间字段
                    view.setYonghuId(yonghu.getId());
                }
                //修改对应字典表字段
                dictionaryService.dictionaryConvert(view, request);
                return R.ok().put("data", view);
            }else {
                return R.error(511,"查不到数据");
            }
    }


    /**
    * 前端保存
    */
    @RequestMapping("/add")
    public R add(@RequestBody CheliangKoufenEntity cheliangKoufen, HttpServletRequest request){
        logger.debug("add方法:,,Controller:{},,cheliangKoufen:{}",this.getClass().getName(),cheliangKoufen.toString());
        Wrapper<CheliangKoufenEntity> queryWrapper = new EntityWrapper<CheliangKoufenEntity>()
            .eq("cheliang_id", cheliangKoufen.getCheliangId())
            .eq("yonghu_id", cheliangKoufen.getYonghuId())
            .eq("cheliang_koufen_uuid_number", cheliangKoufen.getCheliangKoufenUuidNumber())
            .eq("cheliang_koufen_types", cheliangKoufen.getCheliangKoufenTypes())
            .eq("cheliang_koufen_number", cheliangKoufen.getCheliangKoufenNumber())
//            .notIn("cheliang_koufen_types", new Integer[]{102})
            ;
        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        CheliangKoufenEntity cheliangKoufenEntity = cheliangKoufenService.selectOne(queryWrapper);
        if(cheliangKoufenEntity==null){
            cheliangKoufen.setInsertTime(new Date());
            cheliangKoufen.setCreateTime(new Date());
        cheliangKoufenService.insert(cheliangKoufen);

            return R.ok();
        }else {
            return R.error(511,"表中有相同数据");
        }
    }

}
