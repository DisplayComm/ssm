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
    <input id="eid" type="hidden" name="id" value="${getone.id}">
    姓名:<input type="text" name="name" value="${getone.lastname}">
    <br>
    Email:<input type="text" name="email" value="${getone.email}">
    <br>
    性别:<input type="text" name="gender" value="${getone.gender}">
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
