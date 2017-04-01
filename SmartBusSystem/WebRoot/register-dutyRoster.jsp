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
<h2 class="title" style="text-align:center">新增司机排班</h2><br/>
<div>
  <form action="" method="post" class="bootstrap-frm">
  <label>
    <span>排班编号:</span>
    <input id="dutyRosterID" type="text" name="dutyRosterID"/>
  </label>
  <label>
    <span>车辆ID:</span>
    <input id="carID" type="text" name="carID"/>
  </label>
  <label>
    <span>员工ID:</span>
    <input id="workerID" type="text" name="workerID"/>
  </label>
  <label>
    <span>线路编号:</span>
    <input id="routeID" type="text" name="routeID"/>
  </label>
  <label>
    <span>周次:</span>
    <input id="week" type="text" name="week"/>
  </label>
  <label>
    <span>星期:</span>
    <select name="selection">
    <option value="Monday">一</option>
    <option value="Tuesday">二</option>
    <option value="Wednesday">三</option>
    <option value="Thusday">四</option>
    <option value="Friday">五</option>
    <option value="Friday">一至五</option>
    </select>
  </label>
  <label>
    <span>起始时间 :</span>
        <input id="starttime" type="text" name="starttime"/>
  </label>
   <label>
    <span>结束时间:</span>
    <input id="endtime" type="text" name="endtime" />
  </label>
  <label>
    <span>间隔时间:</span>
    <input id="interval" type="text" name="interval" />
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
