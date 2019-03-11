package com.yhhy.service.impl;

import com.yhhy.bean.User;
import com.yhhy.dao.UserDao;
import com.yhhy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserDao userDao;

    @Override
    public User getUserInfoByName(String username) {
        return userDao.getUserInfo(username);
    }
}
