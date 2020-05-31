package cn.cuit.gyl.controller.database;

import cn.cuit.gyl.domain.database.Department;
import cn.cuit.gyl.service.database.IDepartmentService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/department")
public class DepartmentController {

    @Autowired
    @Qualifier("iDepartmentServiceImpl")
    IDepartmentService service = null;

    //查询所有的部门
    @RequestMapping("/findAll")
    private String findAll(HttpServletRequest request, @RequestParam(name = "pageNum",required = true,defaultValue = "1") Integer pageNum,@RequestParam(name = "pageSize",required = true,defaultValue = "6") Integer pageSize) throws Exception{
        List<Department> departments = service.findAll(pageNum,pageSize);
        PageInfo pageInfo = new PageInfo(departments);
        request.setAttribute("pageInfo", pageInfo);
        return "forward:/pages/basedata/department-list.jsp";
    }

    //添加部门信息
    @RequestMapping("/save")
    private String save(@RequestParam(name = "name") String name,@RequestParam(name = "desc") String desc) throws Exception{
        Department newDepartment = new Department();
        newDepartment.setName(name);
        newDepartment.setDesc(desc);
        service.save(newDepartment);
        return "redirect:/department/findAll";
    }

    //通过多个id删除部门信息
    @RequestMapping("/deleteByIds")
    private String deleteByIds(@RequestParam(name = "ids") Integer[] ids) throws Exception{
        service.deleteByIds(ids);
        return "redirect:/department/findAll";
    }

    //通过一个id删除部门信息
    @RequestMapping("/deleteById")
    private String deleteById(@RequestParam(name = "id") Integer id) throws Exception{
        service.deleteById(id);
        return "redirect:/department/findAll";
    }

    //通过id查询一个部门并显示其信息到页面
    @RequestMapping("/findById")
    private String findById(@RequestParam(name = "id") Integer id,HttpServletRequest request) throws Exception{
        Department department = service.findById(id);
        request.setAttribute("department", department);
        return "forward:/pages/basedata/department-update.jsp";
    }

    //更新一个部门信息
    @RequestMapping("/updateById")
    private String updateById(Department department) throws Exception{
        service.updateById(department);
        return "redirect:/department/findById?id="+department.getId();
    }

    //模糊查询部门
    @RequestMapping("/findByFuzzyName")
    private String findByFuzzyName(@RequestParam(name = "fuzzyName") String fuzzyName){
        return "";
    }

}
