<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
<head>
    <title>地图</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
body, html 
{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
#allmap{
	width: 100%;
	height: 500px;
}
dl,dt,dd,ul,li{
		margin:0;
		padding:0;
		list-style:none;
	}
	dt{
		font-size:14px;
		font-family:"微软雅黑";
		font-weight:bold;
		border-bottom:1px dotted #000;
		padding:5px 0 5px 5px;
		margin:5px 0;
	}
	dd{
		padding:5px 0 0 5px;
	}
	li{
		line-height:28px;
	}
	#r-result{
	width:100%;
	font-size:14px;
	line-height:20px;
	}
	#result{
		width: 566px; 
		height: 180px;
		overflow-y: scroll; 
		overflow-x: hidden;
		border:1px solid #999;
	}
	.buttom{
	width: 100%;
	height: 100px;
	border:0;
	cellpadding:0;
	cellspacing:0;
	
}

</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=puitw7Sbh1AGDrHhmMebpmPLaZDFLakW"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<link rel="stylesheet" href="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.css" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="js/bootstrap.min.js" type="text/javascript"></script>

  </head>
  
<body onload="sw()">

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
<div style="height: 770px;width:54%;text-align:right;float:left;">
<h2 style="text-align:center"><bold>地图信息查看</bold></h2>
<div style="height:30px;"></div>
    <div id="allmap" class="map"></div>
    </div>
     <div class="mapform" style="width:42%;float:right;">
              <form action="#" class="form">
                <table class="table">
                  <tr>               
                    <th>排班编号</th>
                    <th>车辆ID</th>
                    <th>线路编号</th>
                    <th>周次</th>
                    <th>星期<br>
                    <th>起始时间</th>
                    <th>结束时间</th>
                 
                    </th><th class="last">&nbsp;</th>                
                  </tr>
                    <c:forEach items="${ArangeSchedualList}" var="Item" varStatus="rowStatus" >  
                    	 <tr class="odd">
                    		<td><input type="checkbox" class="checkbox" name="id" value="${Item.dutyRosterID}"/></td><td>${Item.dutyRosterID}</td><td width="80px">${Item.carID}</td><td>${Item.routeID}</td><td>${Item.driverID}</td><td>${Item.driverName}</td>
                    		<td>${Item.week}</td><td>${Item.dayOfWeek}</td><td>${Item.startTime}</td><td>${Item.endTime}</td>
                  		</tr>
                  	
  					</c:forEach>
  					
                </table>
          </form>
       </div>
    <div class="clear" style="height:90%"></div>
<div class="buttom" style="position:absolute;bottom:-20">
<center>
  <tr>
    <th style="font-size: 14px;text-align:center;">Copyrights Reserved 2016-2017 By 你是风儿我是沙有限公司<br/><br/>浙ICP备12345678号 <br></th>
  </tr>
	</center>
</div>
</body>
</html>

<script>

		function show(){
		
		
            var x=event.clientX;
            var y=event.clientY;
         

            document.getElementById("pic").style.top=y;
            document.getElementById("pic").style.left=x;
            document.getElementById("pic").style.visibility="visible"; 
            var formDiv="站点ID:   	<input type='text' id='Siteid'  name='Siteid'/><br><br>";
            formDiv+="站点名称:   <input type='text' id='Sitename' name='Sitename'/><br><br>";        
            formDiv+="<input  type='submit'  class='picbtn' value='提交' onclick='hide()' />";     
            document.getElementById("pic").innerHTML=formDiv;
        }
         
         
		function show2(id){
		
		
            var x=event.clientX;
            var y=event.clientY;
         

            document.getElementById("pic2").style.top=y;
            document.getElementById("pic2").style.left=x;
            document.getElementById("pic2").style.visibility="visible"; 
            var formDiv="站点名称:   	<input type='text' id='siteName'  name='Siteid'/><br><br>";
            formDiv+="路线ID:   <input type='text' id='routeId' name='Sitename'/><br><br>";        
            formDiv+="<input  type='submit'  class='picbtn' value='提交' onclick='hide2()' />";
            
            document.getElementById("pic2").innerHTML=formDiv;
        }
         
       



	
</script>
<script type="text/javascript">


//创建地图实例
var map = new BMap.Map("allmap");

//初始化地图,设置中心点坐标和级别
var point = new BMap.Point(120.219175,30.258602);
map.centerAndZoom(point,15);

//设置地图显示城市
map.setCurrentCity("杭州");

//开启鼠标滚轮缩放
map.enableScrollWheelZoom(true);

//实例化添加默认地图类型控件
var mapType=new BMap.MapTypeControl();
map.addControl(mapType);

// 左上角，实例化添加比例尺
var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});
map.addControl(top_left_control);

//左上角，实例化添加缩放平移控件(启用显示定位)
var top_left_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_LEFT,type: BMAP_NAVIGATION_CONTROL_LARGE,enableGeolocation: true});
map.addControl(top_left_navigation); 
// 添加定位控件
var geolocationControl = new BMap.GeolocationControl({offset: new BMap.Size(5,80)});
geolocationControl.addEventListener("locationSuccess", function(e){
// 定位成功事件
var address = '';
address += e.addressComponent.province;
address += e.addressComponent.city;
address += e.addressComponent.district;
address += e.addressComponent.street;
address += e.addressComponent.streetNumber;
alert("当前定位地址为：" + address);
});
geolocationControl.addEventListener("locationError",function(e){
// 定位失败事件
alert(e.message);
});
map.addControl(geolocationControl);

//实例化并添加缩略图
var overView = new BMap.OverviewMapControl();
var overViewOpen = new BMap.OverviewMapControl({isOpen:true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT});
map.addControl(overView);         
map.addControl(overViewOpen);      

//添加版权
var cr = new BMap.CopyrightControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT,offset: new BMap.Size(80, 10)});
map.addControl(cr); //添加版权控件
var bs = map.getBounds();   //返回地图可视区域
cr.addCopyright({id: 1, content: "<p style='font-size:12px;background:rgba(255,255,255,0.5);font-color:black'>©2014-2017 You're Wind & I'm Sand Internet Technology Co,. Ltd. All Rights Reserved.</p>", bounds: bs});   
//Copyright(id,content,bounds)类作为CopyrightControl.addCopyright()方法的参数

var content = '<div style="margin:0;line-height:20px;padding:2px;">' +
                    '<img src="../img/baidu.jpg" alt="" style="float:right;zoom:1;overflow:hidden;width:100px;height:100px;margin-left:3px;"/>' +
                    '地址：北京市海淀区上地十街10号<br/>电话：(010)59928888<br/>简介：百度大厦位于北京市海淀区西二旗地铁站附近，为百度公司综合研发及办公总部。' +
                  '</div>';

 //创建检索信息窗口对象
    var searchInfoWindow = null;
	searchInfoWindow = new BMapLib.SearchInfoWindow(map, content, {
			title  : "百度大厦",      //标题
			width  : 290,             //宽度
			height : 105,              //高度
			panel  : "panel",         //检索结果面板
			enableAutoPan : true,     //自动平移
			searchTypes   :[
				BMAPLIB_TAB_SEARCH,   //周边检索
				BMAPLIB_TAB_TO_HERE,  //到这里去
				BMAPLIB_TAB_FROM_HERE //从这里出发
			]
		});

var removeMarker = function(e,ee,marker){
		map.removeOverlay(marker);
	};
	


/*var arr = str.split(',');
		for(var i = 0; i<arr.length; i++) {
          	if(arr[i])
				array.push(arr[i]);
		}*/		 

var route1= [];//线路1
var route2= [];//线路2
var route3= [];//线路3

function ManageRoute3(){
	
	
	var Start;
	var End;
	//	map.clearOverlays(); 
   $.post("manageRoute",{"routeID":"003"},function(data){
   
   			
   	    var dd = eval("(" + data + ")"); 
   	  	
   	   	var t=new Array();
   	   	t[0]="a";t[1]="b";t[2]="c";t[3]="d";t[4]="e";t[5]="f";t[6]="g";t[7]="h";t[8]="i";
   	
   	  
   	     var len=dd[t[0]];
   	   
   	    for(var i=1;i<=len;i++){
   	   
   	    	
   	    	var s=dd[t[i]].split('?');
   	    	
   	    	var x=s[0];
   	    	var y=s[1];
   	    	
   	    	if(i==1)
   	    		Start=new BMap.Point(x,y);
   	    	else if(i==len)
   	    		End=new BMap.Point(x,y);
   	    	else
   	    		route3.push(new BMap.Point(x,y));
   	    	
   	    	
   	    			
   	    }
   	 
   	     var Drive = new BMap.DrivingRoute(map, {renderOptions:{map: map, autoViewport: true},policy:BMAP_DRIVING_POLICY_LEAST_TIME}); 
 	 
			Drive.search(Start,End,{waypoints:route3});
			
		
   
   },"json");
 
   
 	
   
   
}

function ManageRoute2(){
	
	
	var Start;
	var End;
		//map.clearOverlays(); 
   $.post("manageRoute",{"routeID":"002"},function(data){
   
   			
   	    var dd = eval("(" + data + ")"); 
   	  	
   	   	var t=new Array();
   	   	t[0]="a";t[1]="b";t[2]="c";t[3]="d";t[4]="e";t[5]="f";t[6]="g";t[7]="h";t[8]="i";
   	
   	  
   	     var len=dd[t[0]];
   	   
   	    for(var i=1;i<=len;i++){
   	   
   	    	
   	    	var s=dd[t[i]].split('?');
   	    	
   	    	var x=s[0];
   	    	var y=s[1];
   	    	
   	    	if(i==1)
   	    		Start=new BMap.Point(x,y);
   	    	else if(i==len)
   	    		End=new BMap.Point(x,y);
   	    	else
   	    		route2.push(new BMap.Point(x,y));
   	    	
   	    	
   	    			
   	    }
   	 
   	     var Drive = new BMap.DrivingRoute(map, {renderOptions:{map: map, autoViewport: true},policy:BMAP_DRIVING_POLICY_LEAST_TIME}); 
 	 
			Drive.search(Start,End,{waypoints:route2});
			
		
   
   },"json");
 
   
 	
   
   
}

function ManageRoute1(){
	
	var Start;
	var End;

   $.post("manageRoute",{"routeID":"001"},function(data){
   
   			
   	    var dd = eval("(" + data + ")"); 
   	  	
   	   	var t=new Array();
   	   	t[0]="a";t[1]="b";t[2]="c";t[3]="d";t[4]="e";t[5]="f";t[6]="g";t[7]="h";t[8]="i";
   	
   	  
   	     var len=dd[t[0]];
   	   
   	    for(var i=1;i<=len;i++){
   	   
   	    	
   	    	var s=dd[t[i]].split('?');
   	    	
   	    	var x=s[0];
   	    	var y=s[1];
   	    	
   	    	if(i==1)
   	    		Start=new BMap.Point(x,y);
   	    	else if(i==len)
   	    		End=new BMap.Point(x,y);
   	    	else
   	    		route1.push(new BMap.Point(x,y));
   	    	
   	    	
   	    			
   	    }
   	 
   	     var Drive = new BMap.DrivingRoute(map, {renderOptions:{map: map, autoViewport: true},policy:BMAP_DRIVING_POLICY_LEAST_TIME}); 
 	 
			Drive.search(Start,End,{waypoints:route1});
			
		
   
   },"json");
 
   
 	
   
   
}








function sw(){

$.post("querySite",function(data){

	//alert(data);

	for(var i=0;i<data.length;i++){
	
	var obj=eval(data);

	//获取经纬度
	var s=parseFloat(obj[i].longitude);
	var w=parseFloat(obj[i].latitude);

	var pt=new BMap.Point(s,w);
	//导入图标
	var MyIcon=new BMap.Icon("images/red35.png",new BMap.Size(35,35),{ anchor: new BMap.Size(2, 2) });
	//创建标注
	var marker =new BMap.Marker(pt,{icon:MyIcon});
	//将标注添加到地图中
	map.addOverlay(marker);	 
	
	var id=obj[i].siteID.trim();
	//左键单击marker事件
	

	LeftClick(id,marker);
	//右键单击marker事件
	
	RightClick(id,marker);
	a(id,marker);
	b(id,marker);
	
	}
},"json");

ManageRoute1();
ManageRoute2();
ManageRoute3();

		
}
function b(id,marker){
 
 

 
 	
 	marker.addEventListener("click",function(e){ 
 	
	
	var p = marker.getPosition(); //获取marker的位置

	$.post("queryOneSite",{"siteID":id},function(data){
	
	
		
		
				var d = eval("(" + data + ")"); 
			
			var siteName=d.siteName.trim();
			var routeid=d.routeID.trim();
			
			var content="站点编号："+id+"<br/>"+"站点名称："+siteName+"<br/>"+"路线id："+routeid;
			
			openInfo(content,e);
		
			

},"json");


});
}

function c(){


alert("ll");

}
var StandID;
//左键单击marker弹出窗口事件
function openInfo(content,e){


var p = e.target;

var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);

var infoWindow = new BMap.InfoWindow(content); // 创建信息窗口对象 

map.openInfoWindow(infoWindow,point); //开启信息窗口
}

function a(id,marker){
	
	
	var removeMarker = function(e,ee,marker){
	
		var json={"siteID":id};
	
		if(confirm("要删除站点"+id+"吗？")){
	
			if(true){
			
				$.post("deleteSite",function(data){
			
					var d = eval("(" + data + ")"); 
					
					if(d.delet=="success"){
						alert("删除站点"+"id"+"成功!");
				
					//将标记删除
						map.removeOverlay(marker);
					}
				
				},"json");
			}
	
		}
	};
	
	var updateMarker = function(marker)
	{
	
	if (confirm("要修改站点"+id+"的站名吗？"))
	{
			if(true)
			{
				StandID=id;
				//alert(StandID);
				show2(id);
		
			}
	}
	};
	
	var markerMenu=new BMap.ContextMenu();
	
	
	markerMenu.addItem(new BMap.MenuItem('删除站点',removeMarker.bind(marker)));
	markerMenu.addItem(new BMap.MenuItem('修改站名',updateMarker.bind(marker)));
	marker.addContextMenu(markerMenu);//给标记添加右键菜单
	
}
//右键单击marker出现菜单事件
function RightClick(id,marker){


	alert("sss");
	var removeMarker = function(e,ee,marker){
	
		var json={"siteID":id};
	
		if(confirm("要删除站点"+id+"吗？")){
	
			if(true){
			
				$.post("deleteSite",function(data){
			
					var d = eval("(" + data + ")"); 
					
					if(d.delet=="success"){
						alert("删除站点"+"id"+"成功!");
				
					//将标记删除
						map.removeOverlay(marker);
					}
				
				},"json");
			}
	
		}
	};
	
	//右键单击更新站点称和站点线路编号
	
	var updateMarker = function(marker)
	{
	
	if (confirm("要修改站点"+id+"的站名吗？"))
	{
			if(true)
			{
			
				show2(id);
			//向数据库中改变站点的函数
				
			}
	}
	};
	
	//创建右键删除菜单,更新菜单
	var markerMenu=new BMap.ContextMenu();
	
	
	markerMenu.addItem(new BMap.MenuItem('删除站点',removeMarker.bind(marker)));
	markerMenu.addItem(new BMap.MenuItem('修改站名',updateMarker.bind(marker)));
	marker.addContextMenu(markerMenu);//给标记添加右键菜单
	
}

function hide2(id)
				{
				
					$.post("updateSite",{"siteID":StandID,"siteName":$("#siteName").val(),"routeID":$("#routeId").val()},
				
					function(data)
					{	
				
		  			var d = eval("(" + data + ")"); 
		  			
						  if(d.login=="success"){
				  	
					  	alert("更改成功");	
				  			
					  }
					  else{
					  
				  		alert("更改失败");
					  }
				
					},"json");
				       	
           			 document.getElementById("pic2").style.visibility="hidden";
       			 };	

//左键信息
function LeftClick(id,marker){

marker.addEventListener("click",function(e){ 
var p = marker.getPosition(); //获取marker的位置

$.post("queryOneSite",{"siteID":id},function(date){

	for(var i=0;i<data.length;i++){
	
			var obj=eval(json);
			
			var siteName=obj[i].siteName;
			var routeid=obj[i].routeID;
			
			var content="站点编号："+id+"<br/>"+"站点名称："+siteName+"<br/>"+"路线id："+routeID;
			openInfo(content,e);
			
	}
},"json");


});

}










var s;//经度
var w;//纬度
map.addEventListener("rightclick",function(e){
if(e.overlay){//判断右键单击的是否是marker
}else{
s = e.point.lng;//经度
w = e.point.lat;//维度
RightClick();//右键单击map出现右键菜单事件
}
});
//右键单击map出现右键菜单事件
function RightClick(){
//alert('你点击的是地图');
var createMarker = function(map){//右键更新站名
if (confirm("要新建站点吗？")){
if(true){

	show();
}
} 
};
var markerMenu=new BMap.ContextMenu();
markerMenu.addItem(new BMap.MenuItem('新建站点',createMarker.bind(map)));
map.addContextMenu(markerMenu);//给标记添加右键菜单
} 


//向地图中添加标注
function AddMarker(){
	
}


//向数据库中添加站点的函数
function hide(){
		$.post("addSite",{"siteID":$("#Siteid").val(),"siteName":$("#Sitename").val(),"longitude":s,"latitude":w},
				function(data){	
				
		  		var d = eval("(" + data + ")"); 
				  if(d.add=="success"){
				  	
				  	alert("添加成功");	
				  	
					  	//添加图标
					var pt=new BMap.Point(s,w);
					//导入图标
					var MyIcon=new BMap.Icon("images/red35.png",new BMap.Size(35,35),{ anchor: new BMap.Size(2, 2) });
					//创建标注
					var marker =new BMap.Marker(pt,{icon:MyIcon});
					//将标注添加到地图中
					map.addOverlay(marker);	  
					
				  }
				  else{
				  
				  	alert("添加失败");
				  }
				
				},"json");
				       	
            document.getElementById("pic").style.visibility="hidden";
        }
        




































































// 创建点
var marker = new BMap.Marker(point);
map.addOverlay(marker); 

marker.addEventListener("click",getAttr);
	function getAttr(){
		var p = marker.getPosition();       //获取marker的位置
		//alert("您所处的位置是" + "东经" + p.lng + ", 北纬" + p.lat); 
		searchInfoWindow.open(marker); //打开marker点处信息窗口 
	} 

//var infoWindow = new BMap.InfoWindow();  // 创建信息窗口对象
//map.openInfoWindow(infoWindow,point); //开启信息窗口      
var index = 0;
var row=1;
var myGeo = new BMap.Geocoder();  
var adds;  
  	document.getElementById('submit').onclick = function(event) {
  	//document.getElementById("result").innerHTML="OK";
    adds = stringToArray(document.getElementById('enterArray').value);
	alert("数据提交成功！");
  };
  var RouteNum=0;//线路有几条
  var _routeNum =[];//每条线路有几个站点
  function stringToArray(str) {
		//建立返回的二维数组
		var array=new Array();
		//document.getElementById("result").innerHTML="OK";
		//分割字符串（以分号为界限）
		var arra = str.split(';');
		var arra2;
		//document.getElementById("result").innerHTML=arra.length;
		var l=arra.length;
		for(var i = 0; i<l; i++){
			
				//document.getElementById("result").innerHTML=arra[i];
			if(arra[i]){
				arra2=arra[i].split(',');
				//if(i==1)
					//document.getElementById("result").innerHTML=arra2;
				RouteNum++;
				var number=0;
				array[RouteNum]= new Array();
				for(var j=0;j<arra2.length;j++){
				
					array[RouteNum].push(arra2[j]);
					number++;
				}
				
				_routeNum[RouteNum]=number;	
			}
		}
		/*var arr = str.split(',');
		for(var i = 0; i<arr.length; i++) {
          	if(arr[i])
				array.push(arr[i]);
		}*/		 
		return array;
 	}
	function bdGEO(){
	
		var add = adds[row][index];     
		geocodeSearch(add);
	
		index++;
		if(index>_routeNum[row]){
		  row++;
		  index=0;
		
		}
	}
	function geocodeSearch(add){    	
		if(row <= RouteNum){
	
			setTimeout(window.bdGEO,400);
		}  
		myGeo.getPoint(add, function(point){
			if (point) { 
		        
				document.getElementById("result").innerHTML +=row+"号线:"+ index + "、" + add + ":" + point.lng + "," + point.lat + "</br>";
				var address = new BMap.Point(point.lng, point.lat);
				addMarker(address,new BMap.Label(index+":"+add,{offset:new BMap.Size(20,-10)}));
			}
		}, "杭州市");
	}
	// 编写自定义函数,创建标注
	function addMarker(point,label){
		var marker = new BMap.Marker(point);
		map.addOverlay(marker);
	}
	
	//定义起始点
	//var start = adds[index];
	//var end = adds[index+1];
	
	//三种驾车策略：最少时间，最短距离，避开高速
	var routePolicy = [BMAP_DRIVING_POLICY_LEAST_TIME,BMAP_DRIVING_POLICY_LEAST_DISTANCE,BMAP_DRIVING_POLICY_AVOID_HIGHWAYS];
	$("#result2").click(function(){
		map.clearOverlays(); 
		
		//定义起始点
		var start = new Array();
		var end = new Array();
		for(var k=1; k<adds.length; k++){
			start[k] = adds[k][0];
			end[k] = adds[k][adds[k].length-1];
		}
		//var start = adds[1][0];
		//var start2 = adds[2][0];
		//var end = adds[1][adds[1].length-1];
		//var end2 = adds[2][adds[2].length-1];
		var internal = new Array();
		//document.getElementById("result").innerHTML +=Array[0];
		for(var i = 1; i<adds.length; i++) {
				internal[i]=new Array();
		    for(var j=1;j<adds[i].length-1; j++){
          	     if(adds[i][j])
				     internal[i].push(adds[i][j]);
				}
		}		 
		var m=$("#driving_way select").val();
		var driving = new Array();
		for(var y=1 ; y<adds.length; y++){
			var _start = start[y];
			var _end = end[y];
			driving[y] = new BMap.DrivingRoute(map, {renderOptions:{map: map, autoViewport: true},policy: routePolicy[m]}); 
			driving[y].search(_start,_end,{waypoints:internal[y]})
		}
		//var driving1 = new BMap.DrivingRoute(map, {renderOptions:{map: map, autoViewport: true},policy: routePolicy[m]});
		//var driving2 = new BMap.DrivingRoute(map, {renderOptions:{map: map, autoViewport: true},policy: routePolicy[m]});
		
		//driving1.search(start[1],end[1],{waypoints:internal[1]});
		//driving2.search(start[2],end[2],{waypoints:internal[2]});
	});
</script>