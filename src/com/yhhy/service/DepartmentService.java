package com.yhhy.service;

import com.yhhy.bean.Department;
import com.yhhy.bean.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 获取部门信息业务处理层
 */
public interface DepartmentService {

    int insertDept(Department department);

    int dropDeptById(int id);

    int updateDept(Department department);
}
