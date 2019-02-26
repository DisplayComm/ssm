package com.yhhy.bean;

/**
 * 部门实体类
 */
public class Department {

    /**
     * 部门id
     */
    private String department_id;
    /**
     * 部门名称
     */
    private String department_name;
    /**
     * 部门描述
     */
    private String note;


    public String getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(String department_id) {
        this.department_id = department_id;
    }

    public String getDepartment_name() {
        return department_name;
    }

    public void setDepartment_name(String department_name) {
        this.department_name = department_name;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
