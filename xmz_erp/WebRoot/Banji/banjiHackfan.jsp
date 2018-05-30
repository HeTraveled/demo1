<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>班级详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script  src="js/jquery.js"></script>
  </head>
  
  <body>
  ${sid}
  <form action="<%=basePath%>studentadmin/studentlist" method="post">
   <input type="text" value="${sid}" name="id" style="display: none">
  <button  type="submit">添加班级内学生成员</button>
  <%-- <form action="<%=basePath%>admin/PeopleUpdateSuccess" method="post"> --%>
<table>
    <tr>
  	<th>id</th>
  	<th>姓名</th>
  
  	
  	
  </tr>
     <c:forEach var="n" items="${requestScope.banjiHackfan}">
      <input type="text" value="${n.id}" name="id" style="display: none">
      
  	<td><c:out value="${n.id}"></c:out></td>
  	<td><a href="<%=basePath%>banjiadmin/banjistudentdelete/${n.id}">
    <c:out value="${n.name}"></c:out></a></td>
  	
	</c:forEach>

	</table>
	</form> 
	
	
	
 </body>
</html>
