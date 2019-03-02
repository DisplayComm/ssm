package com.yhhy.service.impl;

import com.yhhy.bean.Employee;
import com.yhhy.dao.EmployeeDao;
import com.yhhy.service.EmployeeService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 获取员工信息
 */
@Service
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    EmployeeDao employeeDao;

    @Override
    public List<Employee> getListEmpInfo(int current,int rowCount) {
        return employeeDao.getAllEmp(current,rowCount);
    }

    @Override
    public int getTotalNum() {
        return employeeDao.getTotalCount();
    }

    @Override
    public int insertEmp(Employee employee) {
        return employeeDao.addEmpInfo(employee);
    }

    @Override
    public int dropEmpById(int id) {
        return employeeDao.delEmpById(id);
    }

    @Override
    public Employee getOneInfo(@Param("emp_id") Integer emp_id) {
        return employeeDao.getOneInfoById(emp_id);
    }

    @Override
    public int updateEmp(Employee employee) {
        return employeeDao.updateEmpById(employee);
    }

}
