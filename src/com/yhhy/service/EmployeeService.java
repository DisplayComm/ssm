package com.yhhy.service;

import com.yhhy.bean.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 获取员工信息业务处理层
 */
public interface EmployeeService {
    List<Employee> getListEmpInfo(@Param("current") int current,@Param("rowCount") int rowCount);
    int insertEmp(Employee employee);
    int dropEmpById(int id);

    Employee getOneInfo(Integer emp_id);
    int updateEmp(Employee employee);

}
