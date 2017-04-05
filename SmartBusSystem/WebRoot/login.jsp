<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page isELIgnored="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<SCRIPT src="D:\ksy\Workspaces\MyEclipse 10\Test\WebRoot\js\jquery-1.9.1.min.js" type="text/javascript"></SCRIPT>
 

  <head>
  <script src="http://cdn.bootcss.com/jquery/3.0.0/jquery.min.js"></script>
	<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/drop-down.css" />
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/select-widget-min.js"></script>
	<script src=js/bootstrap.min.js></script>
    <base href="<%=basePath%>">
    
    <title>登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<STYLE>
body{
	background: #EBEBEB;
	font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif;
	color: #223;
	font-size: 14px;
}
*{padding: 0px;margin: 0px;}
.top_div{
	background: #008ead;
	width: 100%;
	height: 400px;
}
.ipt{
	border: 1px solid #d3d3d3;
	padding: 10px 10px;
	width: 290px;
	border-radius: 4px;
	padding-left: 35px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
	box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
	-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
	transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
}
.ipt:focus{
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
	box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
}
.u_logo{
	background: url("images/username.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 43px;
	left: 40px;

}
.p_logo{
	background: url("images/password.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 12px;
	left: 40px;
}
a{
	text-decoration: none;
}
.tou{
	background: url("images/tou.png") no-repeat;
	width: 97px;
	height: 92px;
	position: absolute;
	top: -87px;
	left: 140px;
}
.left_hand{
	background: url("images/left_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	left: 150px;
}
.right_hand{
	background: url("images/right_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	right: -64px;
}
.initial_left_hand{
	background: url("images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	left: 100px;
}
.initial_right_hand{
	background: url("images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	right: -112px;
}
.left_handing{
	background: url("images/left-handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -24px;
	left: 139px;
}
.right_handinging{
	background: url("images/right_handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -21px;
	left: 210px;
}
.buttom{
	width: 100%;
	height: 100px;
	border:0;
	cellpadding:0;
	cellspacing:0;
	
}


</STYLE>
<SCRIPT type="text/javascript">
$(function(){
	//得到焦点
	$("#password").focus(function(){
		$("#left_hand").animate({
			left: "150",
			top: " -38"
		},{step: function(){
			if(parseInt($("#left_hand").css("left"))>140){
				$("#left_hand").attr("class","left_hand");
			}
		}}, 2000);
		$("#right_hand").animate({
			right: "-64",
			top: "-38px"
		},{step: function(){
			if(parseInt($("#right_hand").css("right"))> -70){
				$("#right_hand").attr("class","right_hand");
			}
		}}, 2000);
	});
	//失去焦点
	$("#password").blur(function(){
		$("#left_hand").attr("class","initial_left_hand");
		$("#left_hand").attr("style","left:100px;top:-12px;");
		$("#right_hand").attr("class","initial_right_hand");
		$("#right_hand").attr("style","right:-112px;top:-12px");
	});
});
</SCRIPT> 

<SCRIPT>
	
	$(document).ready(function(){		
		$(".ui-select").selectWidget({
			change       : function (changes) {
				return changes;
			},
			effect       : "slide",
			keyControl   : true,
			speed        : 200,
			scrollHeight : 250
		});
		
	});		
	
</SCRIPT>

<script>
var val="行政人员";
$(document).ready(function(){
	
});

	function jump2(){
	 var name=$("#name").val();
   	 var pwd=$("#password").val();
   	 var identy=$("#identity").val();
   	 //alert(identy);
   	 
   	 //Session session.setAttribute("username",name);
   	
   	 if(name==""||pwd=="")
   	 {
   	 		alert("用户名和密码不能为空，请重新输入");
   	 		$("#name").val("");
   	 		$("#password").val("");
   	 
   	 }
   
   	
	$.post("login.action",{"name":name,"password":pwd,"identity":identy},function(data){
		
  	// alert(data);
  	
  	  var d = eval("(" + data + ")"); 
  	 // alert(d);                       
       if (d.login == "success") {  
       		
       			if(identy=="Admin")                   
                	window.location.href = "top-admin.jsp";
                if(identy=="Passenger")                   
                	window.location.href = "top-worker.jsp";  
                if(identy=="Driver")                   
                	window.location.href = "top-driver.jsp";
                if(identy=="Execute")                   
                	window.location.href = "top-extutive.jsp";                          
              }
       else{
       		alert("用户名和密码错误");
   	 		$("#name").val("");
   	 		$("#password").val("");
       }
		
		},"json");
	}

   function jump(){
   	
   	 var name=$("#name").val();
   	 var psd=$("#password").val();
   	 if(name==""||psd=="")
   	 {
   	 		alert("用户名和密码不能为空，请重新输入");
   	 		$("#name").val("");
   	 		$("#password").val("");
   	 
   	 }
   	 alert(name);
   	 alert(psd);
  	 $.ajax({
  	 "type":"post",
  	 "url":"login",
  	 "traditional":true,
  	 "data":{"name":"123","password":"123"},
  	 "type":"json",
  	 "contentType": "application/x-www-form-urlencoded; charset=utf-8",
  	 "success":function(data){
  	 alert("ok");
  	 alert(data);
  	
  	  var d = eval("(" + data + ")"); 
  	  alert(d);                       
       if (d.login == "success") {  
       alert(ok);
       		var t="${test}";
       		alert(t);
       			/*if(val=="管理员")                   
                	window.location.href = "top-admin.jsp";
                if(val=="普通员工")                   
                	window.location.href = "top-driver.jsp";  
                if(val=="司机")                   
                	window.location.href = "top-extutive.jsp";
                if(val=="行政人员")                  
                	window.location.href = "top-worker.jsp";    */                       
              }
       else{
       		alert("用户名和密码错误");
   	 		$("#name").val("");
   	 		$("#password").val("");
       }
             
  	 },
  	 "fail":function(data){
  	 
  	 
  	 }
   
  	 })
   }
 </script>
  </head>
  
  <body>
   <nav>
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <big class="navbar-brand">智能班车管理系统</big>
    </div>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">联系我们</a></li>
        </ul>
        </div>
    </nav>
    
    <div style="height: 780px;">
    <DIV class="top_div"></DIV>
<DIV style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 270px;text-align:center" >
<DIV style="width: 165px; height: 96px; position: absolute;">
<DIV class="tou"></DIV>
<DIV class="initial_left_hand" id="left_hand"></DIV>
<DIV class="initial_right_hand" id="right_hand"></DIV></DIV>

<P style="padding: 30px 0px 10px; position: relative;">
<SPAN class="u_logo"></SPAN>   &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT class="ipt" type="text" id="name" placeholder="请输入ID或编号" value=""> 
    </P>
<P style="position: relative;"><SPAN class="p_logo"></SPAN>&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT class="ipt" id="password" type="password" placeholder="请输入密码" value="">   
  </P>
  <div style="font-size: 8px;top: 498px; left: 630px;" align="center">
  <P>
	<span class="glyphicon glyphicon-user" style="line-height:10px"></span>
		<select id="identity" name="drop" class="ui-select" >
					<option value="Admin">管理员</option>
					<option value="Execute">行政人员</option>
					<option value="Passenger">普通员工</option>
					<option value="Driver">司机</option>
		</select>
	</P>
  </div>
  
<DIV style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
<P style="margin: 0px 35px 20px 45px;"><SPAN style="float: left;">
<A style="color: rgb(0, 139, 139);" href="#">忘记密码?</A></SPAN> 
           <SPAN style="float: right;">  
              <A type="submit" onclick="jump2()" style="background: rgb(0, 142, 173); padding: 10px 15px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;">登录</A> 
           </SPAN>         </P></DIV>
		   <div style="text-align:center;">

</div>
</DIV>
</div>
<div class="buttom">
<input type="hidden" id="xx" value="${test}" name="test" />

<center>
  <tr>
    <th style="font-size: 14px;text-align:center;">Copyrights Reserved 2016-2017 By 你是风儿我是沙有限公司<br/><br/>浙ICP备12345678号 <br></th>
  </tr>
	</center>
</div>
  </body>
</html>
