<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<html>
  <head>
    <title>员工管理系统</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
  </head>
  <body>
  <%
      String loginError = request.getParameter("loginError");
  %>
  <div class="login">
      <form action="${pageContext.request.contextPath}/shiro/login" method="post">
          <label>用户名:</label>
          <input type="text" name="username" required />

          <label>密码:<a href="#">忘记密码?</a></label>
          <input type="password" name="password" required />

          <label style="color: red"><%=loginError==null?"":loginError%></label>
          <span></span>

          <input type="checkbox" name="save" id="save" />
          <label for="save">保持登录</label>

          <input type="submit" value="登录" />
      </form>
  </div>




  <%--<%
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
         &lt;%&ndash;<label style="color: red">${param.loginError}</label>&ndash;%&gt;
     </form>--%>

   <%--<a href="${pageContext.request.contextPath}/emps?current=0&rowCount=10">查看员工列表</a>--%>
  </body>
</html>
