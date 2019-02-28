<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 导入JSTL标签 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工信息列表</title>
</head>
<body>
	<h1 align="center">员工信息列表</h1>
	<table align="center" border="1px" width="70%" cellspacing="0px">
		<tr>
			<th>员工编号</th>
			<th>员工姓名</th>
			<th>员工性别</th>
			<th>员工邮箱</th>
			<th>员工职位</th>
			<th>部门编号</th>
			<th>所属部门</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${emps}" var="emp">
			<tr align="center">
				<td>${emp.emp_id }</td>
				<td>${emp.emp_name }</td>
				<td>${emp.sex==0?'女':'男' }</td>
				<td>${emp.email }</td>
				<td>${emp.position }</td>
				<td>${emp.department.department_id }</td>
				<td>${emp.department.department_name }</td>
				<td>
					<a href="${pageContext.request.contextPath}/goaddemp?emp_id=${emp.emp_id}">编辑</a>
					<a href="${pageContext.request.contextPath}/delempbyid?id=${emp.emp_id}&deptid=${emp.department.department_id}">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<h2 align="center"> <a href="${pageContext.request.contextPath}/goaddemp">新增员工 </a></h2>
</body>
</html>