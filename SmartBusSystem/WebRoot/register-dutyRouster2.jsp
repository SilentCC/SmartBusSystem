<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增司机排班</title>
    
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
  <h1>新增司机排班</h1>
	<div class="content2" style="height:90%">
		<form>
			<input type="text" name="carid" value="车辆ID" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'CarID';}">
			<input type="text" name="driverid" value="司机ID" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'UserID';}">
			<input type="text" name="drivername" value="司机姓名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'RounterNum';}">
			<input type="text" name="Rousterid" value="线路编号" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'RounterNum';}">
			<input type="text" name="weeks" value="周次" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Weeeks';}">
			<input list="days" type="text" name="days" value="星期" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Days';}">
            <datalist id="days">
            <option value="一 三 五"></option>
            <option value="二 四"></option>
            </datalist>
            <input type="text" name="timeofstart" value="起始时间" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'TimeOfStart';}">
            <input type="text" name="timeofend" value="结束时间" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'TimeOfEnd';}">
            <input type="text" name="intervel" value="间隔时间" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Intervel';}">   
			<input type="submit" class="register" value="新增">
		</form>
	</div>
	<div class="clear" style="height:89%"></div>
<div style="width:100%;">
<center>
  <tr>
    <th style="font-size: 14px;text-align:center;">Copyrights Reserved 2016-2017 By 你是风儿我是沙有限公司<br/><br/>浙ICP备12345678号 <br></th>
  </tr>
	</center>
</div>

  </body>
</html>
