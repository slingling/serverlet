<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>存款</title>
    
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
   <div class="container">
        <div class="row">
            <div class="col-md-3 col-md-offset-4 panel panel-default">
             <h3>存款</h3>
     <form class="margin-base-vertical">
      <p class="input-group">
                        <span class="input-group-addon"><i class="fa fa-yen"></i></span>
      <input type="text" name=" " class="form-control input-lg" placeholder="请输入存款金额"required>
      </p>
   <p class="text-center">
                        <button type="submit" class="btn btn-success btn-lg">提交
                        </button>
                    </p>
                    </form>
                    </div>
                    </div>
                    </div>
  </body>
</html>
