package com.yhhy.controller;

import com.yhhy.util.GraphicsUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.RenderedImage;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

@Controller
@RequestMapping("/shiro")
public class LoginController {

    @RequestMapping("/login")
    public String login(HttpServletRequest request,Map<String, Object> map, @RequestParam("username") String username,
                        @RequestParam("password") String password) throws UnsupportedEncodingException {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        if(!subject.isAuthenticated()){
            // 把用户名和密码封装为 UsernamePasswordToken 对象
            UsernamePasswordToken token = new UsernamePasswordToken(username,password);
            token.setRememberMe(true);
            try {
                subject.login(token);
            }catch (AuthenticationException ae){
                System.out.println("登录失败："+ae.getMessage());
                map.put("loginError",ae.getMessage());
                return "redirect:/index.jsp";
            }
        }
        return "redirect:/emps?current=0&rowCount=10";
    }

    /**
     * 获取图片验证码
     * @param request
     * @param response
     */
    @RequestMapping("/getValidateCode")
    public void getValidateCodeInfo(HttpServletRequest request,HttpServletResponse response){
        try {
            response.setHeader("Pragma","No-cache");
            response.setHeader("Cache-Control","no-cache");
            response.setDateHeader("Expires", 0);
            //表明生成的响应是图片
            response.setContentType("image/jpeg");
            Map<String, Object> map1=new GraphicsUtil().getGraphics();
            System.out.println(map1.get("rand"));
            request.getSession().setAttribute("rand", map1.get("rand"));
            ImageIO.write((RenderedImage) map1.get("image"), "JPEG", response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
