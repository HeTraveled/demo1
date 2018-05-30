<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>课程修改</title>
    <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">

    <%@include file="./Copy.jsp"%>
                            <li class="active">课程修改</li>
                        <%@include file="../common/top.jsp"%>           
                        <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 专业信息修改</span>
                        <div class="description"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title"></div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form action="<%=basePath%>courseadmin/nameUpdate" method="post">
                                    <input type="text" value="${name.id}" name="id" style="display: none">
                                    <div class="form-group">
                                            <label for="exampleInputEmail1">请输入您要修改的课程名称</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入课程名称" name="name">
                                       <!--  <div class="form-group">
                                            <label for="exampleInputEmail1">请输入您要修改后的课程名称</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要修改的专业名称">
                                      <label for="exampleInputEmail1">请输入您要修改课程描述</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入课程描述">
                                     -->
                                        <div class="checkbox">
                                          <div class="checkbox3 checkbox-round">
                                            <input type="checkbox" id="checkbox-1">
                                           <!--  <label for="checkbox-1">
                                              检查信息是否正确
                                            </label> -->
                                          </div>
                                        </div>
                                        <button type="submit" class="btn xmz_btn_info">确定修改</button>
                                    </form>
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
