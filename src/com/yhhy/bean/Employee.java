package com.yhhy.bean;

/**
 * 员工实体类
 */
public class Employee {
    /**
     * 员工ID
     */
    private int id;
    /**
     * 员工姓名
     */
    private String lastname;
    /**
     * 员工邮箱
     */
    private String email;
    /**
     * 员工性别
     */
    private int gender;

    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return id;
    }
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    public String getLastname() {
        return lastname;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getEmail() {
        return email;
    }
    public void setGender(int gender) {
        this.gender = gender;
    }
    public int getGender() {
        return gender;
    }
}
