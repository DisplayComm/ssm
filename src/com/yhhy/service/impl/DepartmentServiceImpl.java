package com.yhhy.service.impl;

import com.yhhy.bean.Department;
import com.yhhy.bean.Employee;
import com.yhhy.dao.DepartmentDao;
import com.yhhy.dao.EmployeeDao;
import com.yhhy.service.DepartmentService;
import com.yhhy.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 获取员工信息
 */
@Service
public class DepartmentServiceImpl implements DepartmentService{

    @Autowired
    DepartmentDao departmentDao;


    @Override
    public int insertDept(Department department) {
        return departmentDao.addDeptInfo(department);
    }

    @Override
    public int dropDeptById(int id) {
        return departmentDao.delDeptById(id);
    }

    @Override
    public int updateDept(Department department) {
        return departmentDao.updateDeptById(department);
    }
}
