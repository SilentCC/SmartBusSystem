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

<style type="text/css">
.buttom{
	width: 100%;
	height: 100px;
	border:0;
	cellpadding:0;
	cellspacing:0;	
}

.content2 {
	
    background-color: rgba(0, 0, 0, 0.21);
 

    border-radius: 10px;
  
    
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
	document.getElementById("identity").value="Executives";
	}
	
	function fun3(){
	document.getElementById("identity").value="Passenger";
	}
	function fun5(){
	document.getElementById("identity").value="Driver";
	}
	
	function fun4(obj){
	
	document.getElementById("idList").value=obj;
	document.getElementById("jump").click();
	
	
	}
	
	function show1(index){
            var x=event.clientX;
            var y=event.clientY;
            alert("xxxxxs");
            document.getElementById("pic1").style.top=y-160;
            document.getElementById("pic1").style.left=x-660;
            document.getElementById("pic1").style.visibility="visible"; 
            var formDiv="<form id='form1' name='form1'  action='updateExecutive' method='post'>";
            formDiv+="ID:&nbsp&nbsp&nbsp&nbsp<input type='text' id='idshow' style='border-radius:10px;background-color:transparent;' name='executiveID'/><br><br>";
            formDiv+="姓名:   <input type='text'  id='nameshow' style='border-radius:10px;background-color:transparent;' name='executiveName'/><br><br>";
            formDiv+="性别:   <input type='text'  style='border-radius:10px;background-color:transparent;' name='sex'/><br><br>";
            formDiv+="电话: <input type='text'   style='border-radius:10px;background-color:transparent;' name='phone'/><br><br>";
            formDiv+="住址: <input type='text'  style='border-radius:10px;background-color:transparent;' name='address'/><br><br>";              
            formDiv+="<button type='submit'  class='picbtn' value='提交' onclick='hide()'>提交</button>"; 
            formDiv+="</form>";     
            document.getElementById("pic1").innerHTML=formDiv;
            
            $("#form1").attr("method","POST"); 
            $("#form1").submit(); 
            alert("ok");
            if( $("#form1").method=="POST")
           			 alert("ok");
            else
           			 aler("no");
      }
      function show2(){
            var x=event.clientX;
            var y=event.clientY;
            document.getElementById("pic2").style.top=y-140;
            document.getElementById("pic2").style.left=x-560;
            document.getElementById("pic2").style.visibility="visible"; 
            var formDiv="<form action='updateExecutive' method='post'>";
            formDiv+="ID:&nbsp&nbsp&nbsp&nbsp<input type='text'  style='border-radius:10px;background-color:transparent;' name='id'/><br><br>";
            formDiv+="姓名:   <input type='text'  style='border-radius:10px;background-color:transparent;' name='name'/><br><br>";
            formDiv+="性别:   <input type='text'  style='border-radius:10px;background-color:transparent;' name='sex'/><br><br>";
            formDiv+="所属部门: <input type='text' style='width:151px;border-radius:10px;background-color:transparent;' name='department'/><br><br>";
            formDiv+="电话: <input type='text'   style='border-radius:10px;background-color:transparent;' name='tel'/><br><br>";
            formDiv+="住址: <input type='text'  style='border-radius:10px;background-color:transparent;' name='address'/><br><br></form>";     
            document.getElementById("pic2").innerHTML=formDiv;
            }
            
      function show3( index){
            var x=event.clientX;
            var y=event.clientY;
            document.getElementById("pic3").style.top=y-140;
            document.getElementById("pic3").style.left=x-580;
            document.getElementById("pic3").style.visibility="visible"; 
            var formDiv="<form action='updateExecutive' method='post'>";
            formDiv+="ID:&nbsp&nbsp&nbsp&nbsp<input type='text'  style='border-radius:10px;background-color:transparent;' name='id'/><br><br>";
            formDiv+="姓名:   <input type='text'  style='border-radius:10px;background-color:transparent;' name='name'/><br><br>";
            formDiv+="性别:   <input type='text'  style='border-radius:10px;background-color:transparent;' name='sex'/><br><br>";
            formDiv+="电话: <input type='text'   style='border-radius:10px;background-color:transparent;' name='tel'/><br><br>";
            formDiv+="<input  type='submit'  class='picbtn' value='提交' onclick='hide()' /></form>";     
            document.getElementById("pic3").innerHTML=formDiv;
            
        }
         
        function hide(){
            document.getElementById("pic1").style.visibility="hidden";
            document.getElementById("pic2").style.visibility="hidden";
            document.getElementById("pic3").style.visibility="hidden";
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
       <li><a href="top-admin.jsp">返回主页</a></li>
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
						<li role="presentation" class="active"><a href="#Section1" onclick="fun2()" aria-controls="home" role="tab" data-toggle="tab">行政人员个人信息</a></li>
						<li role="presentation" ><a href="#Section2" onclick="fun3()"  aria-controls="profile" role="tab" data-toggle="tab">普通员工个人信息</a></li>
						<li role="presentation" ><a href="#Section3" onclick="fun5()"  aria-controls="profile" role="tab" data-toggle="tab">司机个人信息</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content tabs">
						<div role="tabpanel" class="tab-pane fade in active" id="Section1">
							<h2 class="title" style="text-align:center">行政人员个人信息表</h2>
							<nav aria-label="...">
  <ul class="pager">
    <li class="next"><a class="fff"  onclick="fun()">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="registerExecutive">新增人员<br></a></li>
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
                    		<td><input type="checkbox" class="checkbox" name="id" value="${Item.executiveID}"/></td><td id="executiveID">${Item.executiveID}</td><td id="executiveName" width="80px">${Item.executiveName}</td><td>${Item.sex}</td><td>${Item.phone}</td><td>${Item.address}</td><td class="last"> <a onclick="show1()">编辑</a><div class="pic1" id="pic1"></div> | <a  onclick="fun4('${Item.executiveID}')">删除</a></td>
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
    <li class="next"><a class="fff" onclick="fun()">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="registerPassenger">新增人员<br></a></li>
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
                    <th>所属部门</th>
                    <th>电话</th>
                    <th>住址</th>
                    <th>操作<br></th><th class="last">&nbsp;</th>
                  </tr>
                 <c:forEach items="${PassengerList}" var="Item" varStatus="rowStatus" >  
                    	 <tr class="odd">
                    		<td><input type="checkbox" class="checkbox" name="id" value="${Item.passengerID}"/></td><td>${Item.passengerID}</td><td width="80px">${Item.name}</td><td>${Item.sex}</td><td>${Item.department}</td><td>${Item.location}</td><td class="last"><a onclick="show2()">编辑</a><div class="pic2" id="pic2"></div> | <a  onclick="fun4('${Item.passengerID}')">删除</a></td>
                  		</tr>	
  					</c:forEach>
                </table>
          </form>
       </div>
						</div>
						
		<div role="tabpanel" class="tab-pane fade" id="Section3">
							<h2 class="title" style="text-align:center">司机个人信息表</h2>
							<nav aria-label="...">
  <ul class="pager">
  <li class="next"><a class="fff" href="#">批量编辑</a></li>
    <li class="next"><a class="fff" onclick="fun()">批量删除 <br></a></li>
    <li class="next"><a class="fff" href="registerDriver">新增人员<br></a></li>
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
                    <th>操作<br></th><th class="last">&nbsp;</th>
                  </tr>
                  
                  <c:forEach items="${DriverList}" var="Item" varStatus="rowStatus" >  
                    	 <tr class="odd">
                    		<td><input type="checkbox" class="checkbox" name="id" value="${Item.driverID}"/></td><td>${Item.driverID}</td><td width="80px">${Item.driverName}</td><td>${Item.sex}</td><td>${Item.phone}</td><td class="last"><a onclick="show3()">编辑</a><div class="pic3" id="pic3"></div> | <a  onclick="fun4('${Item.driverID}')">删除</a></td>
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
<div class="tcdPageCode" style="position:absolute;left:520;top:740;">
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
