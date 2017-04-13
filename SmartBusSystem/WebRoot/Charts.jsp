<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Charts.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 引入 ECharts 文件 -->
<script src="js/echarts.min.js"></script>
<title>报表统计</title>
</head>

<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('main'));
	// 显示标题，图例和空的坐标轴
	myChart.setOption({
   	 title: {
    	    text: '站点乘客流量示意图'
    	},
    	tooltip: {},
    	legend: {
    	    data:['乘客人数']
    	},
    	xAxis: {
    	    data: []
    	},
    	yAxis: {},
		dataZoom: [
        {
            type: 'slider',
            xAxisIndex: 0,
            start: 10,
            end: 60
        },
        {
            type: 'inside',
            xAxisIndex: 0,
            start: 10,
            end: 60
        },
        {
            type: 'slider',
            yAxisIndex: 0,
            start: 30,
            end: 80
        },
        {
            type: 'inside',
            yAxisIndex: 0,
            start: 30,
            end: 80
        }
    ],
    	series: [{
    	    name: '乘客人数',
    	    type: 'bar',
    	    data: []
  	  }]
	});

	myChart.showLoading();
	// 异步加载数据
	$.get('data.json').done(function (data) {
    	myChart.hideLoading();
		// 填入数据
    	myChart.setOption({
      	  xAxis: {
       	     data: data.categories
       	 },
       	 series: [{
        	    // 根据名字对应到相应的系列
         	   name: '乘客人数',
               data: data.data
       	 }]
    	});
	});
	</script>
</body>
</html>
