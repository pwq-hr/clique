package cn.cuit.gyl.controller.database;

import cn.cuit.gyl.domain.test.A;
import cn.cuit.gyl.domain.test.B;
import cn.cuit.gyl.domain.test.vo;
import cn.cuit.gyl.utils.ConverterUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/test")
public class Test {

    @RequestMapping("/test")
    private String test(Date dateTime){
        System.out.println(ConverterUtils.dateToString(dateTime, "yyyy-MM-dd HH:mm:ss"));
        return "main";
    }

    @RequestMapping("/testAjax")
    @ResponseBody//加上这个注解，return 就不会再跳转页面，只是返回数据（json）
    private vo testAjax(vo v) throws Exception{
        System.out.println(v);
        v.setId("hsdisji");
        return v;
    }

    @RequestMapping("/testA_B")
    private String testA_B(A a) throws Exception{
        System.out.println(a.getA());
        List<B> bs = a.getbList();
        for (B b:bs) {
            System.out.println(b);
        }
        return "main";
    }

}
