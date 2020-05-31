package cn.cuit.gyl.controller.database;


import cn.cuit.gyl.domain.database.Product;
import cn.cuit.gyl.service.database.IProductService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    @Qualifier("productServiceImpl")
    IProductService service = null;

    @RequestMapping("/findAll")
    private String findAll(HttpServletRequest request, @RequestParam(name = "pageNum",required = true,defaultValue = "1") Integer pageNum, @RequestParam(name = "pageSize",required = true,defaultValue = "6") Integer pageSize) throws Exception{
        List<Product> products = service.findAll(pageNum,pageSize);
        PageInfo pageInfo = new PageInfo(products);
        request.setAttribute("pageInfo", pageInfo);
        return "forward:/pages/basedata/product-list.jsp";
    }

    @RequestMapping("/save")
    private String save(Product product) throws Exception{
        service.save(product);
        return "redirect:/product/findAll";
    }

    @RequestMapping("/deleteByIds")
    private String deleteByIds(@RequestParam(name = "ids") String[] ids) throws Exception{
        service.deleteByIds(ids);
        return "redirect:/product/findAll";
    }

    @RequestMapping("/deleteById")
    private String deleteById(@RequestParam(name = "id") String id) throws Exception{
        service.deleteById(id);
        return "redirect:/product/findAll";
    }

    @RequestMapping("/findById")
    private String findById(HttpServletRequest request,@RequestParam(name = "id") String id) throws Exception{
        Product product = service.findById(id);
        request.setAttribute("product", product);
        return "forward:/pages/basedata/product-update.jsp";
    }

    @RequestMapping("/updateById")
    private String updateById(Product product) throws Exception{
        System.out.println(product);
        service.updateById(product);
        return "redirect:/product/findById?id="+product.getId();
    }

}
