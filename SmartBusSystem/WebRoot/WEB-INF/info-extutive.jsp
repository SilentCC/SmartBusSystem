<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息表</title>
    
	<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style1.css">

<style type="text/css">
.buttom{
	width: 100%;
	height: 100px;
	border:0;
	cellpadding:0;
	cellspacing:0;	
}
</style>

<script type="text/javascript">
	function fun(){
	
	obj=document.getElementsByName("id");
	check_val="";
	for(k in obj){
		if(obj[k].checked){
		check_val=check_val+obj[k].value.trim();
		check_val=check_val+"?";
		
		}
	}
	
	
	
	document.getElementById("idList").value=check_val;
	document.getElementById("jump").click();
	
		
	}
	
	function fun2(){
	document.getElementById("identity").value="Bus";
	}
	
	function fun3(){
	document.getElementById("identity").value="Schedual";
	}
	
	function fun4(){
	document.getElementById("identity").value="Route";
	}
	
	function fun5(){
	document.getElementById("identity").value="Site";
	}
	function fun6(obj){
	
	
	document.getElementById("idList").value=obj;
	document.getElementById("jump").click();
	
	
	}
</script>

  </head>
   <form action="deleteBusSystem" method="post" >
  	<input type="hidden" name="idList" id="idList"/>
  	<input type="hidden" name="identity" id="identity" value="Bus"/>
  	<input type="submit" name="jump" id="jump" style="display:none"/>
  </form>
  
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
      <li><a>Hello, <%=session.getAttribute("name")%>!</a></li>
      <li><a href="top-extutive.jsp">返回主页</a></li>
      <li><a href="userExit">退出登录</a></li>
        <li><a href="Lianxi.jsp">联系我们</a></li>
      </ul>   
</nav>
    <div class="demo" style="height: 750px;">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<div class="tab" role="tabpanel">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#Section1" onclick="fun2()" aria-controls="home" role="tab" data-toggle="tab">车辆信息管理</a></li>
						<li role="presentation"><a href="#Section2" onclick="fun3()" aria-controls="profile" role="tab" data-toggle="tab">司机排班信息管理</a></li>
						<li role="presentation"><a href="#Section3" onclick="fun4()" aria-controls="profile" role="tab" data-toggle="tab">线路信息管理</a></li>
						<li role="presentation"><a href="#Section4" onclick="fun5()" aria-controls="profile" role="tab" data-toggle="tab">站点信息管理</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content tabs">
						<div role="tabpanel" class="tab-pane fade in active" id="Section1">
							<h2 class="title" style="text-align:center">车辆信息管理表</h2>
							<nav aria-label="...">
  <ul class="pager">
  <li class="next"><a class="fff" href="#">批量编辑</a></li>
    <li class="next"><a class="fff" onclick="fun()">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="registerBus">新增车辆<br></a></li>
  </ul>
</nav>
<div class="inner">
              <form action="#" class="form">
                <table class="table" >
                  <tr>
   
                   	<th class="first"><input type="checkbox" class="checkbox toggle" /></th>
                    <th>车辆ID</th>
                    <th>品牌</th>
                    <th >座位数</th>
                    <th >注册时间</th>
                    <th >保险到期</th>
                    <th >驾驶证</th>
                    <th >行驶证</th>
                    <th >行驶路线</th>
                    <th >操作<br></th><th class="last">&nbsp;</th>
                    <c:forEach items="${ScheduledBusList}" var="Item" varStatus="rowStatus" >  
                    	 <tr class="odd">
                    		<td><input type="checkbox" class="checkbox" name="id" value="${Item.carID}"/></td><td>${Item.carID}</td><td>${Item.brand}</td><td>${Item.seats}</td><td>${Item.dateOfRegistration}</td><td>${Item.dateOfInsurance}</td>
                    		<td>${Item.driverLicense}</td><td>${Item.carLicense}</td><td>${Item.routeID}</td><td class="last"><a href="#">编辑</a> | <a  onclick="fun6('${Item.carID}')">删除</a></td>
                  		</tr>
                  	
  					</c:forEach>
        
                </table>
          </form>
       </div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="Section2">
							<h2 class="title" style="text-align:center">司机排班信息表</h2>
							<nav aria-label="...">
  <ul class="pager">
<li class="next"><a class="fff" href="#">批量编辑</a></li>
    <li class="next"><a class="fff" onclick="fun()">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="registerSchedual">新增排班<br></a></li>
  </ul>
</nav>
<div class="inner">
              <form action="#" class="form">
                <table class="table">
                  <tr>
                     <th class="first"><input type="checkbox" class="checkbox toggle" /></th>
                    <th>排班编号</th>
                    <th>车辆ID</th>
                    <th>员工ID</th>
                    <th>线路编号</th>
                    <th>周次</th>
                    <th>星期</th>
                    <th>起始时间</th>
                    <th>结束时间</th>
                    <th>间隔</th>
                    <th>操作<br></th><th class="last">&nbsp;</th>
                  </tr>
                    <c:forEach items="${ArangeSchedualList}" var="Item" varStatus="rowStatus" >  
                    	 <tr class="odd">
                    		<td><input type="checkbox" class="checkbox" name="id" value="${Item.dutyRosterID}"/></td><td>${Item.dutyRosterID}</td><td width="80px">${Item.carID}</td><td>${Item.routeID}</td><td>${Item.driverID}</td><td>${Item.driverName}</td>
                    		<td>${Item.week}</td><td>${Item.dayOfWeek}</td><td>${Item.startTime}</td><td>${Item.endTime}</td><td class="last"><a href="#">编辑</a> | <a  onclick="fun6('${Item.dutyRosterID}')">删除</a></td>
                  		</tr>
                  	
  					</c:forEach>
                
                </table>
          </form>
       </div>
						</div>
						
		<div role="tabpanel" class="tab-pane fade" id="Section3">
							<h2 class="title" style="text-align:center">线路信息表</h2>
							<nav aria-label="...">
  <ul class="pager">
<li class="next"><a class="fff" href="#">批量编辑</a></li>
    <li class="next"><a class="fff" onclick="fun()">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="smartBusSystem">新增线路<br></a></li>
  </ul>
</nav>
<div class="inner">
              <form action="#" class="form">
                <table class="table">
                  <tr>
                     <th class="first"><input type="checkbox" class="checkbox toggle" /></th>
                    <th>线路编号</th>
                    <th>线路名称</th>
                    <th>起始站点</th>
                    <th>最终站点</th>
                    <th>乘客人数</th>
                    <th>操作<br></th><th class="last">&nbsp;</th>
                  </tr>
                    <c:forEach items="${RouteList}" var="Item" varStatus="rowStatus" >  
                    	 <tr class="odd">
                    		<td><input type="checkbox" class="checkbox" name="id" value="${Item.routeID}"/></td><td>${Item.routeID}</td><td width="80px">${Item.routeName}</td><td>${Item.startPlace}</td><td>${Item.endPlace}</td><td>${Item.passageNum}</td>
                    		<td class="last"><a href="#">编辑</a> | <a  onclick="fun6('${Item.routeID}')">删除</a></td>
                  		</tr>
                  	
  					</c:forEach>
                
                </table>
          </form>
       </div>
						</div>
						
	   <div role="tabpanel" class="tab-pane fade" id="Section4">
							<h2 class="title" style="text-align:center">站点信息表</h2>
							<nav aria-label="...">
  <ul class="pager">
<li class="next"><a class="fff" href="#">批量编辑</a></li>
    <li class="next"><a class="fff" onclick="fun()">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="registerSite">新增站点<br></a></li>
  </ul>
</nav>
<div class="inner">
              <form action="#" class="form">
                <table class="table">
                  <tr>
                    <th></th>
                    <th>站点编号</th>
                    <th>线路编号</th>
                    <th>站点名称</th>                
                    <th>乘客人数</th>
                    <th>操作<br></th><th class="last">&nbsp;</th>
                  </tr>
                    <c:forEach items="${SiteList}" var="Item" varStatus="rowStatus" >  
                    	 <tr class="odd">
                    		<td><input type="checkbox" class="checkbox" name="id" value="${Item.siteID}"/></td><td>${Item.siteID}</td><td width="80px">${Item.routeID}</td><td>${Item.siteName}</td><td>${Item.passageNum}</td>
                    		<td class="last"><a href="#">编辑</a> | <a  onclick="fun6('${Item.siteID}')">删除</a></td>
                  		</tr>
                  	
  					</c:forEach>
                
                </table>
          </form>
       </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav aria-label="Page navigation" style="text-align:center">
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</div>

<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>

<div class="buttom">
<center>
  <tr>
    <th style="font-size: 14px;text-align:center;">Copyrights Reserved 2016-2017 By 你是风儿我是沙有限公司<br/><br/>浙ICP备12345678号 <br></th>
  </tr>
	</center>
</div>
  </body>
</html>
