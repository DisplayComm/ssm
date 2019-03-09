<%--
  Created by IntelliJ IDEA.
  User: MyPC
  Date: 2019/1/26
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<html>
  <head>
    <title>SSM框架增删改查</title>
  </head>
  <body>
     <%
       String loginError = request.getParameter("loginError");
     %>
     <form method="post" action="${pageContext.request.contextPath}/shiro/login" style="text-align: center">
         <h1 style="color: red">SSM部门管理系统</h1>
         用户名：<input type="text" name="username">
         <br><br>
         密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password">
         <br><br>
         <label style="color: red"><%=loginError==null?"":loginError%></label>
         <br>
         <input style="width: 15rem;" type="submit" value="登录">
         <%--<label style="color: red">${param.loginError}</label>--%>
     </form>

   <%--<a href="${pageContext.request.contextPath}/emps?current=0&rowCount=10">查看员工列表</a>--%>
  </body>
</html>
