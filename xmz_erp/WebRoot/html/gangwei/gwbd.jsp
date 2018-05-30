<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>岗位绑定</title>
  <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
   <%  
            String id = request.getParameter("enterprise_id");
		// name=new String(name.getBytes("iso-8859-1"),"gb2312");  
		//out.print("id:"+id); 
		request.getSession().setAttribute("user", id);
String a=(String)session.getAttribute("user");
//out.print("id222:"+a); 
        %> 
    <div class="app-container">
        <div class="row content-container">
            <nav class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-expand-toggle">
                            <i class="fa fa-bars icon"></i>
                        </button>
                        <ol class="breadcrumb navbar-breadcrumb">
                            <li>企业绑定</li>
                            <li class="active">企业信息绑定</li>
                        <%@include file="../common/top.jsp"%>         
                       <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">岗位信息绑定</span>
                        <div class="description">  
                        请选择要绑定的岗位   </div>

                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                        <div class="panel fresh-color panel-info">
                                                <div class="panel-heading">权限修改</div>
                                                <div class="panel-body">
                                                    <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title"></div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form action="<%=basePath%>Job/enterprise_to_job_binding" method="post">
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>课程名</th>
                                                <th>选择</th>
                                                     <!-- <th> <button type="submit"  class="btn btn-xs btn-default">绑定</button></th> -->
  												<th><input type="text" value="${jid}" name="enterprise_id" style="display: none"></th>                                                             
                                            </tr>
                                        </thead>
                                    

                                        <tbody>
                                         <c:forEach var="l" items="${list}">
                                            <tr>
                                                <td><a class="xmz_a"title="点击查看详细信息" ><c:out value="${l.name}"></c:out></a></td>
                                               <td>
                                             <div class="checkbox3 checkbox-success checkbox-inline checkbox-check checkbox-round  checkbox-light">
                                             <input type="checkbox" id="checkbox-fa-light-${l.id}" name="name" value="${l.name}"> 
                                        
                                            <label for="checkbox-fa-light-${l.id}">
                                             <!-- input的id数值跟liber for的数值对应，建议从后台读取id拼接 -->
                                            </label>
                                          </div>
                                               </td>

                                                
                                            </tr>
                                
                                       </c:forEach>                        
                                        </tbody>

                                    </table>
                                       <button type="submit" class="btn btn-info">绑定</button>
                                    </form>
                                
                                </div>

                            </div>                                                
                            </div>                                            
                                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

          <%@include file="../common/footer.jsp"%>
   <%@include file="../common/js.jsp"%>

</body>

</html>