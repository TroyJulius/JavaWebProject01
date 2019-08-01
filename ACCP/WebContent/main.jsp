<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="${ pageContext.request.contextPath }/AccpServlet?method=getByPersonAndType" method="post" >
			<table>
				<tr>
					<td>证书类型</td>
					<td>
						<select name="type" >
							<option value="0">请选择</option>
							<option value="ACCP">ACCP</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td>学员姓名</td>
					<td>
						<input name="name" />
					</td>
				</tr>
				
				<tr>
					<td>身份证号</td>
					<td>
						<input name="idcard" />
					</td>
				</tr>
				
				<tr>
					<td>
						<input type="submit" value="查询" />
						<input type="reset" value="重来" />
					</td>
				</tr>
			</table>

		</form>
		<c:if test="${!(msg == '')}">
			${ msg }
		</c:if>
		<c:if test="${ msg=='' }">
			<table border="1">
				<tr>
					<th>证书编号</th>
					<th>学员姓名</th>
					<th>证书种类</th>
					<th>身份证号</th>
				</tr>
				<c:forEach items="${ accps }" var="accp">
					<tr>
						<td>${ accp.id }</td>
						<td>${ accp.name }</td>
						<td>${ accp.type }</td>
						<td>${ accp.idcard }</td>
					</tr>
				</c:forEach>
			</table>
		
		</c:if>
	</div>
</body>
</html>