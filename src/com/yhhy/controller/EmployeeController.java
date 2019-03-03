package com.yhhy.controller;


import com.yhhy.bean.Department;
import com.yhhy.bean.Employee;
import com.yhhy.service.DepartmentService;
import com.yhhy.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @Autowired
    DepartmentService departmentService;

    @RequestMapping(value ="/emps",method = RequestMethod.GET)
    public String getListEmp(HttpServletRequest request,Map<String,Object> map, @RequestParam(value = "current",required = false) int current,
                             @RequestParam(value = "rowCount",required = false) int rowCount,@RequestParam(value = "emp_name",required = false) String emp_name){
        List<Employee> list = employeeService.getListEmpInfo(current,rowCount,emp_name);
        int totalNum = employeeService.getTotalNum();
        map.put("emps",list);
        map.put("current",current);
        map.put("rowCount",rowCount);
        map.put("total",Math.abs(totalNum/10));
        map.put("djy",Math.abs(current/10));
        return "list";
    }

    //跳转新增页面
    @RequestMapping(value = "goaddemp")
    public String goaddjsp(HttpServletRequest request, Map<String,Object> map){
        String emp_id = request.getParameter("emp_id");
        System.out.println(emp_id);
        Employee employee = new Employee();
        if(emp_id != null){
            employee.setEmp_id(Integer.valueOf(emp_id));
            Employee employeeList = employeeService.getOneInfo(employee.getEmp_id());
            map.put("getone",employeeList);
        }
        return "addemp";
    }


    @RequestMapping(value = "addemp",method = RequestMethod.POST)
    public String insertempinfo(HttpServletRequest request ,Employee employee){
          String emp_id = request.getParameter("id");
          String name = request.getParameter("name");
          String email = request.getParameter("email");
          String gender = request.getParameter("gender");
          String positions = request.getParameter("positions");
          employee.setEmp_name(name);
          employee.setEmail(email);
          employee.setSex(Integer.parseInt(gender.toString()));
          employee.setPositions(positions);

          //部门
          String department_id = request.getParameter("department_id");
          String department_name = request.getParameter("department_name");
          Department department = new Department();
          department.setDepartment_id(department_id);
          department.setDepartment_name(department_name);
          employee.setDepartment(department);
          employee.setDepartment_id(department.getDepartment_id());

          int flag,depart = 0,updateFlag = 0;
          String string = "";
          if(emp_id != null){
              employee.setEmp_id(Integer.valueOf(emp_id));
              updateFlag = departmentService.updateDept(department);
              flag = employeeService.updateEmp(employee);
              string = "修改成功！";
          }else{
              depart = departmentService.insertDept(department);
              flag = employeeService.insertEmp(employee);
              string = "添加成功！";
          }
          if (flag > 0 && depart >0){
              System.out.println(string);
          }else if (flag > 0 && updateFlag >0){
              System.out.println(string);
          }
          return "redirect:/emps?current=0&rowCount=10";
    }

    //删除员工信息
    @RequestMapping(value = "/delempbyid")
    public String deleteempbyid(HttpServletRequest request){
        String id = request.getParameter("id");
        String deptId = request.getParameter("deptid");
        int flag = employeeService.dropEmpById(Integer.parseInt(id));
        int delflag = departmentService.dropDeptById(Integer.parseInt(deptId));
        if (flag > 0 && delflag >0){
            System.out.println("删除成功！"+flag);
        }else{
            System.out.println("删除失败："+flag);
        }
        return "redirect:/emps?current=0&rowCount=10";
    }

}
