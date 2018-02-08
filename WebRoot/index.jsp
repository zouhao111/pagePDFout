<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<%--<link href="resources/ztree/css/style.css"	type="text/css" rel="stylesheet" />--%>
<%--<script type="text/javascript" src="resources/jquery.alert.v1.2/jquery.js"></script>--%>
<%--<script type="text/javascript" src="resources/ztree/js/jquery.ztree.core-3.5.js"></script>--%>
<%--<script type="text/javascript" src="resources/ztree/js/jquery.ztree.excheck-3.5.js"></script>--%>
<%--<script type="text/javascript" src="resources/js/jquery-ui-jqLoding.js"></script>--%>
<%--<script src="resources/laydate/laydate.js"></script>--%>
<%--<script type="text/javascript" src="http://www.xdocin.com/xdoc.js"></script>--%>
<%--<script type="text/javascript" src="resources/js/pdf.js"></script>--%>
<%--<script type="text/javascript" src="resources/js/ajaxpdf.js"></script>--%>
<%--<link href="resources/css/pager.css"	type="text/css" rel="stylesheet" />--%>
<style type="text/css">
div {
	margin: 0 auto;
	text-align: center;
}

.rijie {
	width: 100%;
	padding-top: 0px;
	/* 	border: 1 solid; */
	/* 	width: 50%; */
	/* 	height: 50%; */
	/* 	position: absolute; */
	/* 	top: 50%; */
	/* 	left: 50%; */
	/* 	margin-top: calc(-30%/ 2); */
	/* 	margin-left: calc(-50%/ 2); */
	/* 	text-align: center; */
}

.contain {
	border: 0px solid;
	width: 45%;
	margin-top: 1%;
	margin-left: 28%;
	height: 900px;
}
td{
	height: 10px;
	border-top-width: 0px;
    border-left-width: 0px;
	
}

td.p10 {
	width: 10%;
}

td.p20 {
	width: 20%;
}

td.p30 {
	width: 30%;
}

td.p40 {
	width: 40%;
}

td.p50 {
	width: 50%;
}

td.p60 {
	width: 60%;
}
td.p70 {
	width: 70%;
}
td.p80 {
	width: 80%;
}

.table2 {
	border: 0px solid;
	width: 100%;
/* 	height: 2000px; */
	margin-top: 0px;
	top: 0px;
	padding-top: 0px;
}

.t2 {
	border: 1px solid;
	height:200px;
	width: 100%;
	margin-top: 0px;
	top: 0px;
}

.tright{
	width: 100%;
/* 	height: 2000px; */
	margin-top: 0px;
	height: 100%;
}

.baojing {
	width: 100%;
	height: 140px;
}
.dabiao {
	border:1px solid;
	margin-top:0px;
	width: 100%;
	
}
.state{
	border:1px solid;
	width: 100%;
	height: 100px;
}
.logo{
	border: 0px solid;
	float: left;
	margin-left: 25%;
}
.cn{
	border: 0px solid;
	float: left;
	margin-left: 5px;
	margin-top: 12px;
	font-size: 20px;
}

.header{
	border: 0px solid;
	height: 55px;
	
}
</style>
<!--[if IE 9]>

<link href="resources/css/ie8.css"	type="text/css" rel="stylesheet" />
<![endif]-->
<!--[if IE 8]>

<link href="resources/css/ie8.css"	type="text/css" rel="stylesheet" />
<![endif]-->
<!--[if  IE 7]>
<link href="resources/css/ie7.css"	type="text/css" rel="stylesheet" />
<![endif]-->
<script src="add/pdf/jquery-1.7.1.min.js"></script>
<script src="add/pdf/jspdf.debug.js"></script>
<script src="add/pdf/html2canvas.js"></script>


<title>水量报表</title>
<style type="text/css">
table{
width:100%
}
</style>



</head>
<body class="body_overflow">
		

		
		<div class="contain" id="contents">
		<div class="header"  style="clear:both;">
		<div class="logo"><img src="img/logo.png"></div><div class="cn"><span>深圳市天地互通科技有限公司</span></div>
		<div style="clear:both;"></div>
		</div>
		<div style="clear:both;"></div>
		<table class="rijie" border='1' cellspacing="0" cellpadding="0">
			<thead>日结</thead>
			<tr>
				<td rowspan="2" colspan="2"  class="p20">系统名称</td>
				<td rowspan="2" colspan="6" class="p60">水污染源及水平衡在线监测系统</td>
				<td colspan="1" class="p10">星期</td>
				<td  colspan="1" class="p10">三</td>
			</tr>
			<tr>
				<td colspan="1">日期</td>
				<td colspan="2">2017.12.22</td>
			</tr>
			<tr>
				<td colspan="7" class="p70">报警</td>
				<td colspan="3" class="p30">达标分析统计</td>
			</tr>
<!-- 			<tr> -->
<!-- 				<td>日期</td> -->
<!-- 				<td>日期</td> -->
<!-- 				<td>日期</td> -->
<!-- 				<td>日期</td> -->
<!-- 				<td>日期</td> -->
<!-- 				<td>日期</td> -->
<!-- 				<td>日期</td> -->
<!-- 				<td>日期</td> -->
<!-- 				<td>日期</td> -->
<!-- 				<td>日期</td> -->
<!-- 			</tr> -->
			<tr>
				<td colspan="7"   class="p70" style="
/*     border-top-width: 0px; */
/*     border-left-width: 0px; */
"><div class="table2" >
						<table id="xx" class="t2" border='1' cellspacing="0" cellpadding="0" style="border-top-width: 0px;">
							<tr>
								<th>序号</th>
								<th>单元名称</th>
								<th>时间</th>
								<th>类型</th>
								<th>报警值</th>
								<th>限值</th>
							</tr>
							
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr><tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr><tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
							
							
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
							<tr>
								<td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td><td>ni</td>
							</tr>
						</table>
						<div><span>点位运行情况(共100家)</span></div>
						<div class="state"><textarea style="width: 97%;height: 95px;border: 0px;"></textarea></div>
						<div><span>备注</span></div>
						<div class="state"><textarea style="width: 97%;height: 95px;border: 0px;"></textarea></div>
					</div>
				</td>
				<td colspan="3"  class="p30"><div class="tright">
				<div class="dabiao"><img src="img/dabiao.png" width="100%"></div>
				<div><span>报警区域统计</span></div>
				<div class="dabiao"><img src="img/baojing.png" width="100%"></div>
				<div><span>报警区域统计</span></div>
				<div class="dabiao"><img src="img/wulan.png" width="100%"></div>
				<div class="state" style=" border-bottom-width: 0px;"><textarea style="width: 97%;height:50px;border: 0px;">建议：</textarea></div>
				</div></td>
			</tr>
			<tr>
				<td colspan="10">前一日对比</td>
			</tr>
			<tr>
				<td colspan="10"><textarea style="width: 98%;height: 98px;border: 0px;"></textarea></td>
			</tr>
			<tr>
				<td colspan="10"><input type="button" value="保存">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="提交"></td>
			</tr>
			




		</table>
	</div>
		<input type="button" value="dianwo" id="exportpdf">
		
</body>
<script src="add/pdf/exportpdf.js"></script>

</html>