package com.yhhy.dao;

import com.yhhy.bean.User;

public interface UserDao {

    /**
     * 获取用户信息
     * @param username
     * @return
     */
    User getUserInfo(String username);
}
