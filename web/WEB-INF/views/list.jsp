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
	<div style="text-align: center;margin-bottom: 10px;">
		<form method="get" action="${pageContext.request.contextPath}/emps">
			<input type="hidden" name="current" value="0"/>
			<input type="hidden" name="rowCount" value="10"/>
			姓名：<input type="text" name="emp_name"/>
			所属部门：<input type="text" name="depart_name"/>
			<input type="submit" value="提交"/>
		</form>
	</div>
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
				<td>${emp.positions }</td>
				<td>${emp.department.department_id }</td>
				<td>${emp.department.department_name }</td>
				<td>
					<a href="${pageContext.request.contextPath}/goaddemp?emp_id=${emp.emp_id}">编辑</a>
					<a href="${pageContext.request.contextPath}/delempbyid?id=${emp.emp_id}&deptid=${emp.department.department_id}">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>

	<div style="text-align: center;margin-top: 10px;padding: 20px;">
		<c:choose>
			<c:when test="${current == 0}">
				<label>首页</label>
				<label>上一页</label>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/emps?current=0&rowCount=10">首页</a>
				<a href="${pageContext.request.contextPath}/emps?current=${current-10}&rowCount=10">上一页</a>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${djy == total}">
				<label>下一页</label>
				<label>尾页</label>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/emps?current=${current+10}&rowCount=10">下一页</a>
				<a href="${pageContext.request.contextPath}/emps?current=${total*10}&rowCount=10">尾页</a>
			</c:otherwise>
		</c:choose>

		<label>这是第${djy+1}页,共${total+1}页</label>
	</div>
	<h2 align="center"> <a href="${pageContext.request.contextPath}/goaddemp">新增员工 </a></h2>
</body>
</html>