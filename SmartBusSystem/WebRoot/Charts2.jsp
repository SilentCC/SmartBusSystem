<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>统计报表</title>
    
	<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style1.css">
<script src="js/echarts.min.js"></script>

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
						<li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">柱形图</a></li>
						<li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">折线图</a></li>
						<li role="presentation"><a href="#Section3" aria-controls="profile" role="tab" data-toggle="tab">玫瑰图</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content tabs">
						<div role="tabpanel" class="tab-pane fade in active" id="Section1">
							
							<nav aria-label="..."></nav>
						<div class="inner">
              				<div id="main" style="width: 600px;height:400px;"></div>
       					</div>
					    </div>
						<div role="tabpanel" class="tab-pane fade" id="Section2">
							<nav aria-label="...">
</nav>
<div class="inner">
              <div id="main2" style="width: 600px;height:400px;"></div>
       </div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="Section3">
							
							<nav aria-label="...">
</nav>
<div class="inner">
              <div id="main3" style="width: 600px;height:400px;"></div>
       </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
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
 <script type="text/javascript">
		var myChart = echarts.init(document.getElementById('main'));
	// 显示标题，图例和空的坐标轴
	myChart.setOption({
   	 title: {
    	    text: '同站点各周乘客流量示意图'
    	},
    	  tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross'
            },
            backgroundColor: 'rgba(245, 245, 245, 0.8)',
            borderWidth: 1,
            borderColor: '#ccc',
            padding: 10,
            textStyle: {
                color: '#000'
            },
            position: function (pos, params, el, elRect, size) {
                var obj = {top: 10};
                obj[['left', 'right'][+(pos[0] < size.viewSize[0] / 2)]] = 30;
                return obj;
            },
            extraCssText: 'width: 170px'
        },
        axisPointer: {
            link: {xAxisIndex: 'all'},
            label: {
                backgroundColor: '#777'
            }
        },
        brush: {
            xAxisIndex: 'all',
            brushLink: 'all',
            outOfBrush: {
                colorAlpha: 0.1
            }
        },
       
    	legend: {
    	    data:['乘客人数']
    	},
    	xAxis: {
    	    data: ["第1周","第2周","第3周","第4周","第5周","第6周","第7周","第8周","第9周","第10周","第11周","第12周","第13周","第14周","第15周","第16周","第17周","第18周","第19周","第20周","第21周","第22周","第23周","第24周","第25周","第26周","第27周","第28周","第29周","第30周","第31周","第32周","第33周","第34周","第35周","第36周","第37周","第38周","第39周","第40周","第41周","第42周","第43周","第44周","第45周","第46周","第47周","第48周","第49周","第50周","第51周","第52周"]
    	},
    	yAxis: {
    		//data:[3,5,8,10,13,15,18,20,23,25,28,30]
    	},
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
    	    data: [5,7,3,1,2,5,9,10,14,5,1,2,0,8,5,4,5,4,1,5,8,5,6,1,2,8,9,5,1,2,5,4,6,4,4,2,5,8,2,5,7,8,9,5,4,2,6,5,4,8,5,4]
  	  }]
	});

	//myChart.showLoading();
	// 异步加载数据
	//$.get('data.json').done(function (data) {
    	//myChart.hideLoading();
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
	//});
	</script>
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('main2'));
	// 显示标题，图例和空的坐标轴
	myChart.setOption({
   	 title: {
    	    text: '同站点各周乘客流量示意图'
    	},
    	  tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross'
            },
            backgroundColor: 'rgba(245, 245, 245, 0.8)',
            borderWidth: 1,
            borderColor: '#ccc',
            padding: 10,
            textStyle: {
                color: '#000'
            },
            position: function (pos, params, el, elRect, size) {
                var obj = {top: 10};
                obj[['left', 'right'][+(pos[0] < size.viewSize[0] / 2)]] = 30;
                return obj;
            },
            extraCssText: 'width: 170px'
        },
        axisPointer: {
            link: {xAxisIndex: 'all'},
            label: {
                backgroundColor: '#777'
            }
        },
        brush: {
            xAxisIndex: 'all',
            brushLink: 'all',
            outOfBrush: {
                colorAlpha: 0.1
            }
        },
       
    	legend: {
    	    data:['乘客人数']
    	},
    	xAxis: {
    	    data: ["第1周","第2周","第3周","第4周","第5周","第6周","第7周","第8周","第9周","第10周","第11周","第12周","第13周","第14周","第15周","第16周","第17周","第18周","第19周","第20周","第21周","第22周","第23周","第24周","第25周","第26周","第27周","第28周","第29周","第30周","第31周","第32周","第33周","第34周","第35周","第36周","第37周","第38周","第39周","第40周","第41周","第42周","第43周","第44周","第45周","第46周","第47周","第48周","第49周","第50周","第51周","第52周"]
    	},
    	yAxis: {
    		//data:[3,5,8,10,13,15,18,20,23,25,28,30]
    	},
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
    	    type: 'line',
    	    data: [5,7,3,1,2,5,9,10,14,5,1,2,0,8,5,4,5,4,1,5,8,5,6,1,2,8,9,5,1,2,5,4,6,4,4,2,5,8,2,5,7,8,9,5,4,2,6,5,4,8,5,4]
  	  }]
	});

	//myChart.showLoading();
	// 异步加载数据
	//$.get('data.json').done(function (data) {
    	//myChart.hideLoading();
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
	//});
    </script>
	<script type="text/javascript">
	 var myChart = echarts.init(document.getElementById('main3'));

           option = {
        baseOption: {
            title : {
                text: '同周各站点乘客流量示意图',
                x:'center'
            },
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                data:['station1','station2','station3','station4','station5','station6','station7','station8']
            },
            toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    magicType : {
                        show: true,
                        type: ['pie', 'funnel']
                    },
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            calculable : true,
            series : [
                {
                    name:'半径模式',
                    type:'pie',
                    roseType : 'radius',
                    label: {
                        normal: {
                            show: false
                        },
                        emphasis: {
                            show: true
                        }
                    },
                    lableLine: {
                        normal: {
                            show: false
                        },
                        emphasis: {
                            show: true
                        }
                    },
                    data:[
                        {value:10, name:'station1'},
                        {value:5, name:'station2'},
                        {value:15, name:'station3'},
                        {value:25, name:'station4'},
                        {value:20, name:'station5'},
                        {value:35, name:'station6'},
                        {value:30, name:'station7'},
                        {value:40, name:'station8'}
                    ]
                },
                {
                    name:'面积模式',
                    type:'pie',
                    roseType : 'area',
                    data:[
                        {value:10, name:'station1'},
                        {value:5, name:'station2'},
                        {value:15, name:'station3'},
                        {value:25, name:'station4'},
                        {value:20, name:'station5'},
                        {value:35, name:'station6'},
                        {value:30, name:'station7'},
                        {value:40, name:'station8'}
                    ]
                }
            ]
        },
        media: [
            {
                option: {
                    legend: {
                        right: 'center',
                        bottom: 0,
                        orient: 'horizontal'
                    },
                    series: [
                        {
                            radius: [20, '50%'],
                            center: ['25%', '50%']
                        },
                        {
                            radius: [30, '50%'],
                            center: ['75%', '50%']
                        }
                    ]
                }
            },
            {
                query: {
                    minAspectRatio: 1
                },
                option: {
                    legend: {
                        right: 'center',
                        bottom: 0,
                        orient: 'horizontal'
                    },
                    series: [
                        {
                            radius: [20, '50%'],
                            center: ['25%', '50%']
                        },
                        {
                            radius: [30, '50%'],
                            center: ['75%', '50%']
                        }
                    ]
                }
            },
            {
                query: {
                    maxAspectRatio: 1
                },
                option: {
                    legend: {
                        right: 'center',
                        bottom: 0,
                        orient: 'horizontal'
                    },
                    series: [
                        {
                            radius: [20, '50%'],
                            center: ['50%', '30%']
                        },
                        {
                            radius: [30, '50%'],
                            center: ['50%', '70%']
                        }
                    ]
                }
            },
            {
                query: {
                    maxWidth: 500
                },
                option: {
                    legend: {
                        right: 10,
                        top: '15%',
                        orient: 'vertical'
                    },
                    series: [
                        {
                            radius: [20, '50%'],
                            center: ['50%', '30%']
                        },
                        {
                            radius: [30, '50%'],
                            center: ['50%', '75%']
                        }
                    ]
                }
            }
        ]
    };


        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
	</script>
