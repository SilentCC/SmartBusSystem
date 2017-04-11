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
<h2 class="title" style="text-align:center">新增车辆信息</h2><br/>
<div>
  <form action="" method="post" class="bootstrap-frm">
  <label>
    <span>车辆ID:</span>
    <input id="carID" type="text" name="carID"/>
  </label>
  <label>
    <span>品牌:</span>
    <select name="selection">
    <option value="yutong">宇通</option>
    <option value="kinlong">金龙</option>
    </select>
  </label>
  <label>
    <span>座位数 :</span>
    <select name="selection">
    <option value="twentyfour">24</option>
    <option value="thirtytwo">32</option>
    <option value="forty">40</option>
    </select>
  </label>
  <label>
    <span>注册时间 :</span>
        <input id="dateofRegisteration" type="text" name="dateofRegisteration"/>
  </label>
   <label>
    <span>保险到期:</span>
    <input id="dateofInsurance" type="text" name="dateofInsurance" />
  </label>
  <label>
    <span>车辆驾驶证:</span>
    <select name="selection">
    <option value="own">持有</option>
    <option value="unown">暂不持有</option>
    </select>
  </label>
  <label>
    <span>车辆行驶证:</span>
    <select name="selection">
    <option value="own">持有</option>
    <option value="unown">暂不持有</option>
    </select>
  </label>
  <label>
  <span>备注:</span>
  <textarea id="comment" type="text" name="comment"></textarea>
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
