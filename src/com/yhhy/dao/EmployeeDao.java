package com.yhhy.dao;

import com.yhhy.bean.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 员工dao接口层
 */
public interface EmployeeDao {
    /**
     * 查询所有员工信息
     */
    List<Employee> getAllEmp(@Param("current") int current,@Param("rowCount") int rowCount);

    int getTotalCount();

    /**
     * 新增员工信息
     */
    int addEmpInfo(Employee employee);

    /**
     * 删除员工信息
     */
    int delEmpById(int id);

    /**
     * 修改数据回显
     */
    Employee getOneInfoById(Integer emp_id);

    /**
     * 修改某一条数据
     */
    int updateEmpById(Employee employee);


}
