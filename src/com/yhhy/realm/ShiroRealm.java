package com.yhhy.realm;

import com.yhhy.bean.User;
import com.yhhy.dao.UserDao;
import com.yhhy.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthenticatingRealm;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

/**
 * 实现realm接口AuthenticatingRealm
 */
public class ShiroRealm extends AuthorizingRealm {

    @Autowired
    UserService userService;

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //1、把AuthenticationToken强转为UsernamePasswordToken
        UsernamePasswordToken upToken = (UsernamePasswordToken)token;

        //2、从UsernamePasswordToken获取用户名
        String username = upToken.getUsername();
        //3、从数据库中获取查询到的用户信息
        User user = userService.getUserInfoByName(username);
        //4、如果用户不存在，抛出UnknownAccountException异常
        if (user == null){
            throw new UnknownAccountException("用户不存在！");
        }
        System.out.println("获取从数据库中查询到的用户信息："+username);

        //MD5盐加密
        Object salt = ByteSource.Util.bytes(username);
        String pwd = new String(upToken.getPassword());
        Object password = new SimpleHash("MD5",pwd,salt,1024);
        if(!password.toString().equals(user.getPassword())){
            throw new IncorrectCredentialsException("用户名或密码错误！");
        }

        //5、用户被锁定
        if("0".equals(user.getStatus())){
            throw new LockedAccountException("用户被锁定！");
        }

        //principal 可以是username用户名，也可以是数据表对应用户的实体类
        Object principal = user.getUsername();
        //credenttails密码
        Object credenttails = user.getPassword();
        String realmName = getName();
        ByteSource credenttailsSalt = ByteSource.Util.bytes(username);
        SimpleAuthenticationInfo info = null;//new SimpleAuthenticationInfo(principal,credenttails,realmName);
        info = new SimpleAuthenticationInfo(principal,credenttails,credenttailsSalt,realmName);
        Object jiami = info.getCredentials();
        System.out.println("密码加密后的："+jiami);
        return info;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        Object principal = principalCollection.getPrimaryPrincipal();
        Set<String> roles = new HashSet<>();
        roles.add("lisi");
        if ("admin".equals(principal)){
            roles.add("admin");
        }
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
        return info;
    }


    //038bdaf98f2037b31f1e75b5b4c9b26e admin 123456
    //8c702ae443795331c91cfab48f3f3833 lisi  123456
    //271dad09d1a71f27b7aeaa27306d5e24 zhangsan 123
    public static void main(String[] args) {
        Object salt = ByteSource.Util.bytes("zhangsan");
       Object object = new SimpleHash("MD5","123",salt,1024);
        System.out.println(object);
    }

}
