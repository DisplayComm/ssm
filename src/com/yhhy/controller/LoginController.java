package com.yhhy.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.security.auth.Subject;

@Controller
@RequestMapping("/shiro")
public class LoginController {

    @RequestMapping("/login")
    public String login(@RequestParam("username") String username,@RequestParam("password") String password){
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        if(!subject.isAuthenticated()){
            // 把用户名和密码封装为 UsernamePasswordToken 对象
            UsernamePasswordToken token = new UsernamePasswordToken(username,password);
            token.setRememberMe(true);
            try {
                subject.login(token);
            }catch (AuthenticationException ae){
                System.out.println("AuthenticationException"+ae.getMessage());
            }
        }
        return "redirect:/emps?current=0&rowCount=10";
    }

}
