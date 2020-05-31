package cn.cuit.gyl.controller.business;

import cn.cuit.gyl.domain.business.Cgddzhib;
import cn.cuit.gyl.domain.business.Cgddzhub;

import cn.cuit.gyl.domain.business.Xsdd_zhub;
import cn.cuit.gyl.exception.MyException;
import cn.cuit.gyl.service.business.CgddService;
import cn.cuit.gyl.utils.Message;
import cn.cuit.gyl.utils.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.task.DelegatingSecurityContextAsyncTaskExecutor;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.MalformedParameterizedTypeException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/cgdd")
public class CgddController {

    @Autowired
    private CgddService cgddService;
    @RequestMapping("/findAll")
    public String findAll(HttpServletRequest request){
        List<Cgddzhub> all = cgddService.findAll();
        request.setAttribute("cgdd",all);
        return "business/cgdd-query";
    }

    @RequestMapping("/findByCondition")
    public  @ResponseBody List<Cgddzhub> findByXsdd_zhub(Cgddzhub cgddzhub) throws Exception{

        List<Cgddzhub> cs = cgddService.findByCondition(cgddzhub);

        return cs;
    }

    @RequestMapping("/findZiByZhuId")

    public  @ResponseBody List<Cgddzhib> findZiByZhuId(Long zid) throws Exception{
        System.out.println("zid="+zid);
        List<Cgddzhib> zibByZhuId = cgddService.findZibByZhuId(zid);
        System.out.println("Cgddzhibs="+zibByZhuId);
        return zibByZhuId;
    }

    @RequestMapping("/getDdhToAddUI")
    public String getDdhToAddUI(HttpServletRequest request) throws Exception{
        String ddh = UUIDUtils.getOrderNumber();
        request.setAttribute("ddh", ddh);
        return "business/cgdd-add";
    }
    @RequestMapping("/saveZhubAndZib")

    public  @ResponseBody Message saveZhubAndZib(Cgddzhub cgdd_zhub) throws Exception{
        System.out.println("传入的==="+cgdd_zhub);
        Message message = new Message();
        try {

            cgddService.SaveZhuAndZi(cgdd_zhub);
            message.setMsg("添加成功!");
            return message;
        }catch (MyException e){
            message.setMsg("失败！！错误原因："+e.getMsg());
            return message;
        }

    }
    @RequestMapping("/findByAllAndSfspIsZero")
    @ResponseBody
    public List<Cgddzhub> findByAllAndSfspIsZero(Cgddzhub cgddzhub) throws Exception{
        List<Cgddzhub> cgddzhubs = cgddService.findByAllAndSfspIsZero(cgddzhub);
        return cgddzhubs;
    }

    @RequestMapping("/findZhujd")
    public  @ResponseBody Cgddzhub findZhujd(Long id) throws Exception{
        Cgddzhub byId = cgddService.findById(id);

        System.out.println("byid="+byId);
        return byId;
    }
    @RequestMapping("/findZhuById")
    public  @ResponseBody Cgddzhub findZhuById(Long id) throws Exception{
        Cgddzhub byId = cgddService.findById(id);
        if (byId.getDjzt()!=null&&byId.getDjzt()==1){
            throw new MyException("这个订单已经冻结");
        }
        System.out.println("byid="+byId);
        return byId;
    }
    @RequestMapping("/UpdateZhuB")
    public  @ResponseBody Message UpdateZhuB(Cgddzhub cgddzhub) throws Exception{
        System.out.println("update="+cgddzhub);
        Message message = new Message();

        try {
            cgddService.updateById(cgddzhub);
            message.setMsg("更新成功");
            return message;
        }catch (MyException e){
            message.setMsg("错误原因："+e.getMsg());
            return message;
        }

    }
    @RequestMapping("/DeleteZhuB")
    public  @ResponseBody void DeleteZhuB(Long id) throws Exception{
        cgddService.deleteById(id);
        return;
    }
    @RequestMapping("/DjZhuB")
    public  @ResponseBody void DjZhuB(Long id) throws Exception{
        Cgddzhub byId = cgddService.findById(id);
        byId.setDjzt(1);
        cgddService.updateDj(byId);
        return;
    }
    @RequestMapping("/DeleteZhuBs")
    public  @ResponseBody void DeleteZhuBs(String ids) throws Exception{
        cgddService.deleteByIds(ids);
        return;
    }

    @RequestMapping("/findZiById")
    public @ResponseBody Cgddzhib findZiById(Long zibid)throws Exception{
        Cgddzhib zibByZiId = cgddService.findZibByZiId(zibid);
        if (zibByZiId.getHgb()!=null&&zibByZiId.getHgb()==1){
            throw  new MyException("这个子表已经关闭");
        }
        System.out.println("cgddzhib=="+zibByZiId);
        return zibByZiId;
    }
    @RequestMapping("/UpdateZhiB")
    public  @ResponseBody Message UpdateZhiB(Cgddzhib cgddzhib,String xgr,Date xgrq) throws Exception{
        Message message = new Message();
        try {
            cgddService.UpdateZhiB(cgddzhib, xgr, xgrq);
            message.setMsg("更新成功");
            return message;
        }catch (MyException e){
            message.setMsg("错误原因："+e.getMsg());
            return message;
        }
    }

    @RequestMapping("/DeleteZhiB")
    public  @ResponseBody void DeleteZhiB(Long id) throws Exception{
        cgddService.deleteZiById(id);
        return;
    }
    @RequestMapping("/DeleteZhiBs")
    public  @ResponseBody void DeleteZhiBs(String ids) throws Exception{
        cgddService.deleteZhiByIds(ids);
        return;
    }
    @RequestMapping("/SaveZib")
    public @ResponseBody Message SaveZib(Cgddzhib a,String xgr,Date xgrq)throws Exception{
        Message message = new Message();
        try {
            cgddService.SaveZib(a, xgr, xgrq);
            message.setMsg("添加成功");
            return message;
        }catch (MyException e){
            message.setMsg("错误原因："+e.getMsg());
            return message;
        }
    }
    @RequestMapping("/getZib_hhAndDjh")
    public @ResponseBody Cgddzhib getZibHH(Long zid) throws Exception{
        Long ziBHH = cgddService.getZiBHH(zid);
        Cgddzhub byId = cgddService.findById(zid);
        if (byId.getDjzt() != null&&byId.getDjzt() == 1){
            throw new MyException("已冻结");
        }
        Cgddzhib a = new Cgddzhib();
        a.setHh(ziBHH);
        a.setLydj(byId.getDjh());
        return a;
    }
    @RequestMapping("/spOk")
    public @ResponseBody Message spOk(String djh, String spr, Date sprq) throws Exception{
        Message message = new Message();
        try {
            cgddService.spOk(djh, spr, sprq);
            message.setMsg("审批通过成功");
            return message;
        }catch (MyException e){
            message.setMsg("错误原因："+e.getMsg());
            return message;
        }

    }
    @RequestMapping("/spNo")
    public @ResponseBody Message spNo(String djh, String spr, Date sprq) throws Exception{
        Message message = new Message();
        try {
            cgddService.spNo(djh, spr, sprq);
            message.setMsg("审批通过成功");
            return message;
        }catch (MyException e){
            message.setMsg("错误原因："+e.getMsg());
            return message;
        }
    }

    @RequestMapping("/Open")
    public  @ResponseBody void Open(Long id) throws  Exception{
        Cgddzhib zibByZiId = cgddService.findZibByZiId(id);
        zibByZiId.setHgb(0);
        zibByZiId.setGbr(null);
        zibByZiId.setGbrq(null);
        cgddService.updateZiById(zibByZiId);
    }
    @RequestMapping("/Jdzhub")
    public @ResponseBody void jd(Cgddzhub a) throws Exception{
        a.setDjzt(0);
        cgddService.updateDj(a);
    }
}
