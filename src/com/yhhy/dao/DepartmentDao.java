package com.yhhy.dao;

import com.yhhy.bean.Department;
import com.yhhy.bean.Employee;


/**
 * 员工dao接口层
 */
public interface DepartmentDao {
    /**
     * 新增部门
     */
    int addDeptInfo(Department department);

    /**
     * 删除部门
     */
    int delDeptById(int id);
    /**
     * 修改某一条数据
     */
    int updateDeptById(Department department);
}
