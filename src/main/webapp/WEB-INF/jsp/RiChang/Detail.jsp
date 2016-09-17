<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Function</title>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<link href="images/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Calendar/WdatePicker.js"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<link href="css/jquery.fancybox.css" rel="stylesheet" />
<script src="js/jquery.fancybox.js"></script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=AgqArK5vZZvaGdRfLabmG0wC"></script>

<script type="text/javascript">

	$(document).ready(function() {
		$('.fancybox').fancybox();

	});

	function Edit(url, id) {
		window.location.href = url + "?id=" + id;
	}

	function Del(url, id) {
		if (confirm('确定删除信息？')) {
			window.location.href = url + "?id=" + id;
		}
	}
</script>

</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

		<table width="98%" border="2" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td align="center"
					style="font-size: 20px; font-weight: bolder; color: Gold;">
					考勤记录</td>					
			</tr>
		</table>
		<table align="center" border="1" width="98%" CellPadding="3">
			<tr align="center" class="TdTitle">
				<td width="3%">序号</td>
				<td width="15%">PAD</td>
				<td width="15%">巡检日期</td>
				<td width="6%">上/下桥</td>
				<td width="5%">天气</td>
				<td width="7%">温度(℃)</td>
				<td width="7%">湿度(%)</td>
				<td width="10%">巡检人</td>
				<td width="8%">详细</td>
				<td width="11%">照片</td>
				<td width="12%">操作</td>
			</tr>
					<s:hidden name="zipname"></s:hidden>
					<s:hidden name="macid"></s:hidden>
			<s:iterator value="#atdList" var="atd" status="st">
				<tr>
					<td><s:property value="#st.index+1" /></td>
					<td><s:property value="#atd.macid" /></td>
					<td><s:date name="#atd.datetime" format="yyyy-MM-dd HH:mm:ss"/></td> 
					<td><s:property value="#atd.updown" /></td>
					<td><s:property value="#atd.weather" /></td>
					<td><s:property value="#atd.temp" /></td>
					<td><s:property value="#atd.hum" /></td>
					<td><s:property value="#atd.staff" /></td>
					<td><s:property value="#atd.detail" /></td>
					<td>
					<a class="fancybox" href="<s:property value="#atd.img"/>" title="照片">
					<img src="<s:property value="#atd.img"/>" width="120" height="150"> </a>
					</td>
					<td align="center">
						<input name="btnAttendanceEdit" type="button" value="编辑" class="Button" 
						onclick="Edit('AttendanceEdit','<s:property value="#atd.id"/>')">&nbsp; 
					</td>
				</tr>

			</s:iterator>
		</table>

		<br />
		<table align="center" border="2" cellpadding="0" cellspacing="0"
			width="98%">
			<tr>
				<td align="center"
					style="font-size: 20px; font-weight: bolder; color: Gold">
					缺损记录</td>
			</tr>
		</table>
		<div align="center" style="width: 100%">
			<div style="width: 98%">
				<table align="center" border="1" width="100%" CellPadding="3">
					<tr align="center" class="TdTitle">
						<td width="3%">序号</td>
						<td width="12%">PAD</td>
						<td width="9%">时间</td>
						<td width="7%">巡检项目</td>
						<td width="7%">项目</td>
						<td width="7%">位置1</td>
						<td width="7%">位置2</td>
						<td width="7%">位置3</td>
						<td width="12%">缺损</td>
						<td width="7%">数据</td>
						<td width="10%">照片1(2-6隐藏)</td>
						<td width="12%">操作</td>
					</tr>
					<s:iterator value="#rdList" var="rd" status="st">
						<tr>
						<s:hidden name="zipname"></s:hidden>
							<td><s:property value="#st.index+1" /></td>
							<td><s:property value="#rd.macid" /></td>
							<td><s:date name="#rd.datetime" format="yyyy-MM-dd HH:mm:ss"/></td> 
							<td><s:property value="#rd.classify" /></td>
							<td><s:property value="#rd.item" /></td>
							<td><s:property value="#rd.position1" /></td>
							<td><s:property value="#rd.position2" /></td>
							<td><s:property value="#rd.position3" /></td>
							<td><s:property value="#rd.defect" /></td>
							<td><s:property value="#rd.data" /></td>
							<td>
							<a class="fancybox" href="<s:property value="#rd.img1"/>" rel="gallery" title="照片1">
							<img src="<s:property value="#rd.img1"/>"width="120" height="150"></a> 
							<a class="fancybox" href="<s:property value="#rd.img2"/>" rel="gallery" title="照片2"></a> 
							<a class="fancybox" href="<s:property value="#rd.img3"/>" rel="gallery" title="照片3"></a> 
							<a class="fancybox" href="<s:property value="#rd.img4"/>" rel="gallery" title="照片4"></a> 
							<a class="fancybox" href="<s:property value="#rd.img5"/>" rel="gallery" title="照片5"></a> 
							<a class="fancybox" href="<s:property value="#rd.img6"/>" rel="gallery" title="照片6"></a>
							</td>
							<td align="center">
							<input name="btnRecordEdit" type="button" value="编辑" class="Button" 
							onclick="Edit('RecordEdit','<s:property value="#rd.id"/>')">&nbsp; 
							<input name="btnRecordDelete" type="button" value="删除" class="Button"
							onclick="Del('Detail_delRecord','<s:property value="#rd.id"/>')">&nbsp; 
							</td>
						</tr>
					</s:iterator>
				</table>

			</div>
		</div>

		<br />
		<div align="center">
			<table align="center" border="2" cellpadding="0" cellspacing="0"
				width="98%">
				<tr>
					<td align="center" height="30"
						style="font-size: 20px; font-weight: bolder; color: gold;">
						巡检轨迹</td>
				</tr>
			</table>
			<table align="center" border="1" width="98%" CellPadding="3">
				<tr align="center" class="TdTitle">
					<td width="25%">序号</td>
					<td width="25%">PAD</td>
					<td width="25%">时间</td>
					<td width="25%">位置</td>
				</tr>
			</table>
			<div style="width: 98%; border: 1px solid gray; height: 400px;"
				id="container" align="center"></div>
			<script type="text/javascript">
   			 var n = 0;
    			var colors = new Array("red", "orange", "yellow", "green", "blue", "indigo", "purple");

			    //获取坐标
			    var array1 = '<s:property value="#lon"/>';
			    var array2 = '<s:property value="#lat"/>';
				var pointX = array1.split("|");
				var pointY = array2.split("|");
				// 百度地图API功能
				var map = new BMap.Map("container");
				var point = new BMap.Point(pointX[0], pointY[0]);

				map.centerAndZoom(point, 17);
				map.enableScrollWheelZoom();
				var points = new Array();

				var bounds = map.getBounds();
				var sw = bounds.getSouthWest();
				var ne = bounds.getNorthEast();
				var lngSpan = Math.abs(sw.lng - ne.lng);
				var latSpan = Math.abs(ne.lat - sw.lat);

				points.push(new Array());
				var i = 1;
				// 随机向地图添加标注
				function rand() {
					map.clearOverlays();
					points[0].push(new BMap.Point(pointX[i], pointY[i]));
					Add(points[0], 0);

					i++;
					if (i == pointX.length - 1) {
						clearInterval(si);
					}
				}

				//添加GPS数据
				function Add(GPS, k) {
					//map.clearOverlays();
					for (var i = 0; i < GPS.length; i++) {
						var marker = new BMap.Marker(GPS[i]);
						map.addOverlay(marker);
						if (i == GPS.length - 1) {
							marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
							//map.centerAndZoom(points[i][j], 18);
							var line = new BMap.Polyline(GPS, {
								strokeColor : colors[k],
								strokeWeight : 4,
								strokeOpacity : 0.5
							}); //创建折线对象
							map.addOverlay(line); //添加到地图中
						}
					}
				}

				var si = setInterval('rand()', 1000);
			</script>

		</div>
		<br />
<form name="from2" action="Detail_save" method="post" onsubmit="javascript:return confirm('您确认要保存吗？')">
		<table align="center" border="2" cellpadding="0" cellspacing="0"
			width="98%">
			<tr>
				<td colspan="6" align="center" height="30"
					style="font-size: 20px; font-weight: bolder; color: gold;">
					日常巡检记录表（二）</td>
			</tr>
			<tr>
				<s:hidden name="zipname"></s:hidden>
				<s:hidden name="macid"></s:hidden>
				<td width="8%" align="center" height="150">
				路桥施工<br/>情况记录
				</td>
				<td width="25%" align="center">
				<s:textarea name="recordPlus.repair" cols="40" rows="10"></s:textarea>
				</td>
				<td width="8%" align="center" height="150">
				内保情况
				</td>
				<td width="25%" align="center">
				<s:textarea name="recordPlus.ensure" cols="40" rows="10" ></s:textarea>
				</td>
				<td width="8%" align="center" height="150">
				当班期间<br/>
				其他情况
				</td>
				<td width="25%" align="center">
				<s:textarea name="recordPlus.other" cols="40" rows="10" ></s:textarea>
				</td>
			</tr>
			<tr>
				<td colspan="6" align="center" height="30"
					style="font-size: 20px; font-weight: bolder; color: gold;">
					<input name="btnSave" type="submit" value="保存信息" class="Button">
				</td>
			</tr>
		</table>
</form>
		<br />
		<table align="center" border="2" cellpadding="0" cellspacing="0"
			width="98%">
			<tr>
				<td colspan="6" align="center" height="30"
					style="font-size: 20px; font-weight: bolder; color: gold;">
				审核
				</td>
			</tr>
			<tr>
				<td align="center" class="style1">
					<input name="sign_oper" type="button" value="操作员审核" class="Button"
					onclick=""/>
					<br/>
					<img name="oper_img" Height="48px" Width="96px"/>
					<br/>
					2015/10/22
				
				</td>
				
				<td align="center" class="style1">
					<input name="sign_lead" type="button" value="领导审核" class="Button"
					onclick=""/>
					<br/>
					<img name="lead_img" Height="48px" Width="96px"/>
					<br/>

				</td>

			</tr>
		</table>
		<br />
		<table align="center" border="2" cellpadding="0" cellspacing="0"
			width="98%">
			<tr>
				<td colspan="6" align="center" height="30"
					style="font-size: 20px; font-weight: bolder; color: gold;">
					申报维修
				</td>
			</tr>
			<tr>
				<td align="right">项目名称：</td>
				<td>
				<input name="ItemName" type="text" class="InputText"/>
				</td>
				<td align="right">项目地点：</td>
				<td>
				<input name="ItemAddress" type="text" class="InputText"/>
				</td>
			</tr>
			<tr>
				<td align="right">维修编号：</td>
				<td>
				
				</td>
			</tr>
		</table>
		<div align="center">
		<input name="btn_repair" type="button" value="申报维修" class="Button"
					onclick=""/>&nbsp;&nbsp;
		<input name="btn_OutputReport" type="button" value="导出巡检日报表" class="Button"
					onclick=""/>&nbsp;&nbsp;
		<input name="btn_return" type="button" value="返回" class="Button"
					onclick=""/>
		</div>
	<!-- </form> -->
	
</body>
</html> 
