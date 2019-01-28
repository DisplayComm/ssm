package com.yhhy.service;

import com.yhhy.bean.Employee;

import java.util.List;

/**
 * 获取员工信息业务处理层
 */
public interface EmployeeService {
    List<Employee> getListEmpInfo();
    int insertEmp(Employee employee);
    int dropEmpById(int id);

    Employee getOneInfo(int id);
    int updateEmp(Employee employee);
}
