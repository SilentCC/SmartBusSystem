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
<script src="http://cdn.bootcss.com/jquery/3.0.0/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.page.js"></script>
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

$(".tcdPageCode").createPage({

        pageCount:10,  //总页数

        current:1,   //当前页

        backFn:function(p){
            //单击回调方法，p是当前页码

        }

    });
    
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
	document.getElementById("identity").value="Executives";
	}
	
	function fun3(){
	document.getElementById("identity").value="Executives";
	}
	function fun5(){
	document.getElementById("identity").value="Executives";
	}
	
	function fun4(obj){
	
	document.getElementById("idList").value=obj;
	document.getElementById("jump").click();
	
	
	}
</script>

  </head>
  
  <body>
  <form action="deletePerson" method="post" >
  	<input type="hidden" name="idList" id="idList"/>
  	<input type="hidden" name="identity" id="identity" value="Executives"/>
  	<input type="submit" name="jump" id="jump" style="display:none"/>
  </form>

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
						<li role="presentation" class="active"><a href="#Section1" onclick="fun2()" aria-controls="home" role="tab" data-toggle="tab">行政人员个人信息</a></li>
						<li role="presentation"><a href="#Section2" onclick="fun3()"  aria-controls="profile" role="tab" data-toggle="tab">普通员工个人信息</a></li>
						<li role="presentation"><a href="#Section3" onclick="fun5()"  aria-controls="profile" role="tab" data-toggle="tab">司机个人信息</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content tabs">
						<div role="tabpanel" class="tab-pane fade in active" id="Section1">
							<h2 class="title" style="text-align:center">行政人员个人信息表</h2>
							<nav aria-label="...">
  <ul class="pager">
  <li class="next"><a class="fff" href="#">批量编辑</a></li>
    <li class="next"><a class="fff"  onclick="fun()">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="register-extutive2.jsp">新增人员<br></a></li>
  </ul>
</nav>
<div class="inner">
              <form action="#" class="form">
                <table class="table">
                  <tr>
                    <th class="first"><input type="checkbox" class="checkbox toggle" /></th>
                    <th>ID</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>电话</th>
                    <th>住址</th>
                    <th>操作<br></th><th class="last">&nbsp;</th>                
                  </tr>
                    <c:forEach items="${ExecutivesList}" var="Item" varStatus="rowStatus" >  
                    	 <tr class="odd">
                    		<td><input type="checkbox" class="checkbox" name="id" value="${Item.executiveID}"/></td><td>${Item.executiveID}</td><td width="80px">${Item.executiveName}</td><td>${Item.sex}</td><td>${Item.phone}</td><td>${Item.address}</td><td class="last"><a href="#">编辑</a> | <a  onclick="fun4('${Item.executiveID}')">删除</a></td>
                  		</tr>	
  					</c:forEach>
                </table>
          </form>
       </div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="Section2">
							<h2 class="title" style="text-align:center">普通员工个人信息表</h2>
							<nav aria-label="...">
  <ul class="pager">
  <li class="next"><a class="fff" href="#">批量编辑</a></li>
    <li class="next"><a class="fff" href="#">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="register-extutive2.jsp">新增人员<br></a></li>
  </ul>
</nav>
<div class="inner">
              <form action="#" class="form">
                <table class="table">
                  <tr>
                    <th>ID</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>所属部门</th>
                    <th>类别</th>
                    <th>电话</th>
                    <th>住址</th>
                    <th>操作<br></th><th class="last">&nbsp;</th>
                  </tr>
                  <tr class="odd">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>1</td><td>？</td><td>男</td><td>销售部</td><td>乘客</td><td>12345</td><td>12345</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                  <tr class="even">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>2</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                  <tr class="odd">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>3</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                  <tr class="even">
                    <td><input type="checkbox" class="checkbox" name="id" value="1" /></td><td>4</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td>？</td><td class="last"><a href="#">编辑</a> | <a href="#">删除</a></td>
                  </tr>
                </table>
          </form>
       </div>
						</div>
						
		<div role="tabpanel" class="tab-pane fade" id="Section3">
							<h2 class="title" style="text-align:center">司机个人信息表</h2>
							<nav aria-label="...">
  <ul class="pager">
  <li class="next"><a class="fff" href="#">批量编辑</a></li>
    <li class="next"><a class="fff" href="#">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="/register-extutive.jsp">新增人员<br></a></li>
  </ul>
</nav>
<div class="inner">
              <form action="#" class="form">
                <table class="table">
                  <tr>
                    <th>ID</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>电话</th>
                    <th>操作<br></th><th class="last">&nbsp;</th>
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
<div class="tcdPageCode">
	<nav aria-label="Page navigation" style="text-align:center">
  <ul class="pagination">
    <li>
      <a href="javascript:;" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="javascript:;">1</a></li>
    <li><a href="javascript:;">2</a></li>
    <li><a href="javascript:;">3</a></li>
    <li><a href="javascript:;">4</a></li>
    <li><a href="javascript:;">5</a></li>
    <li>
      <a href="javascript:;" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</div>
</div>

<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/js/jquery.page.js"></script>

<div class="buttom">
<center>
  <tr>
    <th style="font-size: 14px;text-align:center;">Copyrights Reserved 2016-2017 By 你是风儿我是沙有限公司<br/><br/>浙ICP备12345678号 <br></th>
  </tr>
	</center>
</div>
  </body>
</html>
