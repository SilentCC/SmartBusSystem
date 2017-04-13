<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>司机信息查询</title>
    
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
    <div class="demo" style="height: 750px;">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<div class="tab" role="tabpanel">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">个人排班信息</a></li>
						<li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">其他信息查询</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content tabs">
						<div role="tabpanel" class="tab-pane fade in active" id="Section1">
							<h2 class="title" style="text-align:center">个人排班信息</h2>
							<nav aria-label="...">
  <ul class="pager">
  </ul>
</nav>
<div class="inner">
              <form action="#" class="form">
                <table class="table" width="786" height="106">
                  <tr>
                  <th></th>
                    <th>车辆ID</th>
                    <th>线路编号</th>
                    <th>周次</th>
                    <th>星期</th>
                    <th>起始时间</th>
                    <th>结束时间</th>
                    <th>间隔</th>
                    <th>操作<br></th><th class="last">&nbsp;</th>
                  </tr>
                  <tr class="odd">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>001</td><td>101</td><td>10-20</td><td>一三五</td><td>7：20</td><td>8:20</td><td>15mins</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                  <tr class="even">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>002</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                  <tr class="odd">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>003</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                  <tr class="even">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>004</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                </table>
          </form>
       </div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="Section2">
							<h2 class="title" style="text-align:center">司机排班信息表</h2>
							<nav aria-label="...">
  <ul class="pager">
<li class="next"><a class="fff" href="#">批量编辑</a></li>
    <li class="next"><a class="fff" href="#">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="register-car.jsp">新增排班<br></a></li>
  </ul>
</nav>
<div class="inner">
              <form action="#" class="form">
                <table class="table">
                  <tr>
                    <th></th>
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
                   <tr class="odd">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>1</td><td>0001</td><td>C1</td><td>D001</td><td>1-20</td><td>一</td><td>7:00</<td><td>8:30</<td><td>15min</<td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                  <tr class="even">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>2</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                  <tr class="odd">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>3</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                  <tr class="even">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>4</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
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
