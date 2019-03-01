package com.yhhy.bean;

/**
 * 员工实体类
 */
public class Employee {
    /**
     * 员工ID
     */
    private Integer emp_id;

    /**
     * 员工姓名
     */
    private String emp_name;

    /**
     * 员工身份证号
     */
//    private String id_code;

    /**
     * 员工邮箱
     */
    private String email;

    /**
     * 员工性别
     */
    private int sex;
    /**
     * 职位
     */
    private String positions;
    /**
     * 员工表部门id
     */
    private String department_id;

    /**
     * 部门信息
     */
    private Department department;


    public Integer getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(Integer emp_id) {
        this.emp_id = emp_id;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public void setEmp_name(String emp_name) {
        this.emp_name = emp_name;
    }

//    public String getId_code() {
//        return id_code;
//    }
//
//    public void setId_code(String id_code) {
//        this.id_code = id_code;
//    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public String getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(String department_id) {
        this.department_id = department_id;
    }

    public String getPositions() {
        return positions;
    }

    public void setPositions(String positions) {
        this.positions = positions;
    }
}
