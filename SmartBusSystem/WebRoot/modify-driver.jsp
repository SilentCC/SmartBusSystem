<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改司机个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- font files  -->
		
	<!-- /font files  -->
	<!-- css files -->
	<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
	<!-- /css files -->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style1.css">
<link rel="stylesheet" type="text/css" href="css/styleregister.css">
  </head>
  
  <body>
    <nav class="navbar navbar-default">
  <div class="container-fluid" >
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">智能班车管理系统</a>
    </div>
    <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">提交</button>
    </form>
      <ul class="nav navbar-nav navbar-right">
      <li><a>Hello,***</a></li>
      <li><a href="#">退出登录</a></li>
        <li><a href="#">联系我们</a></li>
      </ul>   
</nav>
  <h1>司机个人信息修改</h1>
	<div class="content2" style="height:58%">
		<form action="addDriver" method="post">
			<input type="text" name="driverID" id="driverID" value="司机ID" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '司机ID';}">
			<input type="text" name="driverName" value="姓名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '姓名';}">
			<input list="sex" type="text" name="sex" value="性别" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '性别';}">
            <datalist id="sex">
            <option value="Male"></option>
            <option value="Female"></option>
            </datalist>
			<input type="text" name="phone" value="电话" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电话';}">
			<input type="password" name="pwd" value="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '初始密码';}">
			<input type="submit" class="register" value="修改">
		</form>
	</div>
	<div class="clear" style="height:66%"></div>
<div style="width:100%">
<center>
  <tr>
    <th style="font-size: 14px;text-align:center;">Copyrights Reserved 2016-2017 By 你是风儿我是沙有限公司<br/><br/>浙ICP备12345678号 <br></th>
  </tr>
	</center>
</div>
<script type="text/javascript">
$(function(){
    $('#driverID').attr('disabled',true);
});
</script>
  </body>
</html>
