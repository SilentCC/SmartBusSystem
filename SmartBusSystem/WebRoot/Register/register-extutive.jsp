<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增行政人员</title>
    
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style1.css">
<link rel="stylesheet" type="text/css" href="css/styleregister.css">

<style type="text/css">
.buttom{
	width: 100%;
	height: 100px;
	border:0;
	cellpadding:0;
	cellspacing:0;	
}
</style>
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
<h2 class="title" style="text-align:center">新增行政人员信息</h2><br/>
<div>
  <form action="" method="post" class="bootstrap-frm">
  <label>
    <span>行政人员ID:</span>
    <input id="extutiveID" type="text" name="extutiveID"/>
  </label>
  <label>
    <span>姓名:</span>
    <input id="extutivename" type="text" name="extutivename"/>
  </label>
  <label>
    <span>性别 :</span>
    <select name="selection">
    <option value="Male">男</option>
    <option value="Female">女</option>
    </select>
  </label>
  <label>
    <span>类别 :</span>
    <select name="selection">
    <option value="passenger">乘客</option>
    <option value="driver">司机</option>
    </select>
  </label>
   <label>
    <span>电话:</span>
    <input id="tel" type="text" name="tel" />
  </label>
  <label>
    <span>住址:</span>
    <textarea id="address" type="text" name="address"></textarea>
  </label>
  <label>
    <span>初始密码 :</span>
    <input id="password" type="text" name="password" />
  </label>
  <label>
 <center>
    <span>&nbsp;</span>
    <input type="button" class="button" value="新增" />
  </label>
 </form>
</div>	
</div>
<div class="blank">
</div>
<div class="buttom">
<center>
  <tr>
    <th style="font-size: 15px;text-align:center;">Copyrights Reserved 2016-2017 By 你是风儿我是沙有限公司<br/><br/>浙ICP备12345678号 <br></th>
  </tr>
	</center>
</div>
  </body>
</html>
