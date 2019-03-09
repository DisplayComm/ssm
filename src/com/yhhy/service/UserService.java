package com.yhhy.service;

import com.yhhy.bean.User;

public interface UserService {
    /**
     * 通过用户名查询用户信息
     */
    User getUserInfoByName(String username);
}
