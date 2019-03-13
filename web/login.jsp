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

          <label>密码:</label>
          <input type="password" name="password" required />

          <%--<label><a href="#">忘记密码?</a></label>--%>
          <label>
              <img src="${pageContext.request.contextPath}/shiro/getValidateCode"/>
              <a href="${pageContext.request.contextPath}/login.jsp">看不清，换一下</a>
              <input style="width: 50px;" type="text" name="ValidateCode" required />
          </label>

          <br><br>
          <input type="checkbox" name="save" id="save"/>
          <label for="save">保持登录</label>
          <input type="submit" value="登录" />

          <%--<label style="color: red"><%=loginError==null?"":loginError%></label>--%>
      </form>
  </div>
  </body>
</html>
