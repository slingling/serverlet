<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/login.css">
  </head>
  
  <body>
  <form id="form1" name="form1" method="post" action="loginServlet">
   <div class="container">
        <div class="row">
            <div class="col-md-3 col-md-offset-4 panel panel-default">
             <h3>欢迎登录</h3>
     <form class="margin-base-vertical">
                    <p class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
      <input type="text" name="cardnum" id="cardnum"class="form-control input-lg" placeholder="请输入银行卡号"required>
      </p>
      <p class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
     <input type="password" name="password" id="password" class="form-control input-lg" placeholder="请输入密码"required>
      </p>
      <p class="text-center">
                        <button type="submit" class="btn btn-success btn-lg">登录</button>
                    </p>
                </form>
    </div>
    </div>
    </div>
     </form>
    <br>
  </body>
