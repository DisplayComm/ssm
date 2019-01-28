package com.yhhy.controller;

import com.sun.org.apache.bcel.internal.generic.IFEQ;
import com.sun.org.apache.bcel.internal.generic.IfInstruction;
import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.yhhy.bean.Employee;
import com.yhhy.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @RequestMapping(value ="/emps",method = RequestMethod.GET)
    public String getListEmp(Map<String,Object> map){
        List<Employee> list = employeeService.getListEmpInfo();
        map.put("emps",list);
        return "list";
    }

    //跳转新增页面
    @RequestMapping(value = "goaddemp")
    public String goaddjsp(HttpServletRequest request,Map<String,Object> map){
        String id = request.getParameter("id");
        if(id != null){
            Employee employee = employeeService.getOneInfo(Integer.parseInt(id));
            map.put("getone",employee);
        }
        return "addemp";
    }

    @RequestMapping(value = "addemp",method = RequestMethod.POST)
    public String insertempinfo(HttpServletRequest request ,Employee employee){
          String id = request.getParameter("id");
          String name = request.getParameter("name");
          String email = request.getParameter("email");
          String gender = request.getParameter("gender");
          employee.setLastname(name);
          employee.setEmail(email);
          employee.setGender(Integer.parseInt(gender.toString()));
          int flag;
          String string = "";
          if(id != null){
             flag = employeeService.updateEmp(employee);
              string = "修改成功！";
          }else{
              flag = employeeService.insertEmp(employee);
              string = "添加成功！";
          }
          if (flag > 0){
              System.out.println(string);
          }else{
              System.out.println(string);
          }
          return "redirect:/emps";
    }

    //删除员工信息
    @RequestMapping(value = "/delempbyid")
    public String deleteempbyid(HttpServletRequest request){
        String id = request.getParameter("id");
        int flag = employeeService.dropEmpById(Integer.parseInt(id));
        if (flag > 0){
            System.out.println("删除成功！"+flag);
        }else{
            System.out.println("删除失败："+flag);
        }
        return "redirect:/emps";
    }

}
