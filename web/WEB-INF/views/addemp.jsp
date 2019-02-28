<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MyPC
  Date: 2019/1/27
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<html>
<head>
    <title>新增员工</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/addemp">
    <input id="eid" type="hidden" name="id" value="${getone.emp_id}">
    姓名:<input type="text" name="name" value="${getone.emp_name}">
    <br>
    <%--性别:<input type="text" name="gender" value="${getone.sex}">--%>
    性别：<%--<label>男</label><input type="radio" value="1" name="gender">
          <label>女</label><input type="radio" value="0" name="gender">--%>
    <c:choose>
        <c:when test="${getone.sex == 1}">
            <input type="radio" name="gender" checked="checked" value="1">男
            <input type="radio" name="gender" value="0">女
        </c:when>
        <c:otherwise>
            <input type="radio" name="gender" value="1">男
            <input type="radio" name="gender" checked="checked" value="0">女
        </c:otherwise>
    </c:choose>
    <br>
    Email:<input type="text" name="email" value="${getone.email}">
    <br>
    员工职位:<input type="text" name="position" value="${getone.position}">
    <br>
    部门编号:<input type="text" name="department_id" value="${getone.department.department_id}">

    <br>
    所属部门:<input type="text" name="department_name" value="${getone.department.department_name}">

    <br>
    <input type="submit" value="提交">
</form>
</body>
<script type="text/javascript">
    $(document).ready(function(){
        var aa = $("#eid").val();
        if (aa == ""){
            $("#eid").remove();
        }
    });
</script>
</html>
