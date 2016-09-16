<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Function</title>
<%@ include file="/WEB-INF/jsp/public/common.jspf"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.fancybox.css"
	type="text/css" media="screen" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.fancybox.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/show.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.fancybox.pack.js"></script>
<script type="text/javascript">
	/*
	 *更改显示的图片
	 */
	var taoguanImg;
	var taoguanJson;
	var kaguImg;
	var kaguJson;
	var luoshuanJson;
	var luoshuanImg;
	var hutaoJson;
	var hutaoImg;
	var danggaiJson;
	var danggaiImg;
	
	var xiekuaiJson;
	var xiekuaiImg;
	var tietaoJson;
	var tietaoImg;
	var zuliquanJson;
	var zuliquanImg;
	var newName = new Array();
	$(function() {
		if (!($("#taoguanJson").val())) {
			$("#taoguanJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#kaguJson").val())) {
			$("#kaguJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#luoshuanJson").val())) {
			$("#luoshuanJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#hutaoJson").val())) {
			$("#hutaoJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#danggaiJson").val())) {
			$("#danggaiJson").val("{'id':0,'level':'0'}");
		}
		
		if (!($("#xiekuaiJson").val())) {
			$("#xiekuaiJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#tietaoJson").val())) {
			$("#tietaoJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#zuliquanJson").val())) {
			$("#zuliquanJson").val("{'id':0,'level':'0'}");
		}
		taoguanJson = eval('(' + $("#taoguanJson").val() + ')');
		taoguanImg = new Array(taoguanJson.img1, taoguanJson.img2,
				taoguanJson.img3, taoguanJson.img4, taoguanJson.img5,
				taoguanJson.img6);
		kaguJson = eval('(' + $("#kaguJson").val() + ')');
		kaguImg = new Array(kaguJson.img1,
				kaguJson.img2, kaguJson.img3,
				kaguJson.img4, kaguJson.img5,
				kaguJson.img6);
		luoshuanJson = eval('(' + $("#luoshuanJson").val() + ')');
		luoshuanImg = new Array(luoshuanJson.img1, luoshuanJson.img2,
				luoshuanJson.img3, luoshuanJson.img4, luoshuanJson.img5,
				luoshuanJson.img6);
		hutaoJson = eval('(' + $("#hutaoJson").val() + ')');
		hutaoImg = new Array(hutaoJson.img1, hutaoJson.img2, hutaoJson.img3,
				hutaoJson.img4, hutaoJson.img5, hutaoJson.img6);
		danggaiJson = eval('(' + $("#danggaiJson").val() + ')');
		danggaiImg = new Array(danggaiJson.img1,
				danggaiJson.img2, danggaiJson.img3,
				danggaiJson.img4, danggaiJson.img5,
				danggaiJson.img6);
		
		xiekuaiJson = eval('(' + $("#xiekuaiJson").val() + ')');
		xiekuaiImg = new Array(xiekuaiJson.img1, xiekuaiJson.img2,
				xiekuaiJson.img3, xiekuaiJson.img4, xiekuaiJson.img5,
				xiekuaiJson.img6);
		tietaoJson = eval('(' + $("#tietaoJson").val() + ')');
		tietaoImg = new Array(tietaoJson.img1, tietaoJson.img2, tietaoJson.img3,
				tietaoJson.img4, tietaoJson.img5, tietaoJson.img6);
		zuliquanJson = eval('(' + $("#zuliquanJson").val() + ')');
		zuliquanImg = new Array(zuliquanJson.img1,
				zuliquanJson.img2, zuliquanJson.img3,
				zuliquanJson.img4, zuliquanJson.img5,
				zuliquanJson.img6);

		for (var i = 0; i < 6; i++) {
			$("#taoguan_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ taoguanImg[i]);
			document.getElementById("taoguan_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ taoguanImg[i];
			$("#kagu_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ kaguImg[i]);
			document.getElementById("kagu_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ kaguImg[i];
			$("#luoshuan_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ luoshuanImg[i]);
			document.getElementById("luoshuan_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ luoshuanImg[i];
			$("#hutao_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ hutaoImg[i]);
			document.getElementById("hutao_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ hutaoImg[i];
			$("#danggai_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ danggaiImg[i]);
			document.getElementById("danggai_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ danggaiImg[i];
			
			$("#xiekuai_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ xiekuaiImg[i]);
			document.getElementById("xiekuai_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ xiekuaiImg[i];
			$("#tietao_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ tietaoImg[i]);
			document.getElementById("tietao_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ tietaoImg[i];
			$("#zuliquan_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ zuliquanImg[i]);
			document.getElementById("zuliquan_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ zuliquanImg[i];
		}
		$("a[rel=taoguan_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=kagu_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=luoshuan_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=hutao_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=danggai_group]").fancybox({
			'cyclic' : false
		});
		
		$("a[rel=xiekuai_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=tietao_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=zuliquan_group]").fancybox({
			'cyclic' : false
		});

	});
</script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form id="form1" method="post"
		action="infoXiamaotouUp_%{time== null ? 'add' : 'edit'}?taskId=%{#task.id}"
		enctype="multipart/form-data">
		<s:hidden name="id" />
		<s:hidden name="newName" id="newName" />
		<s:hidden id="taoguanJson" name="taoguanJson" />
		<s:hidden id="kaguJson" name="kaguJson" />
		<s:hidden id="luoshuanJson" name="luoshuanJson" />
		<s:hidden id="hutaoJson" name="hutaoJson" />
		<s:hidden id="danggaiJson" name="danggaiJson" />
		<s:hidden id="taoguanIndex" />
		<s:hidden id="kaguIndex" />
		<s:hidden id="luoshuanIndex" />
		<s:hidden id="hutaoIndex" />
		<s:hidden id="danggaiIndex" />
		
		<s:hidden id="xiekuaiJson" name="xiekuaiJson" />
		<s:hidden id="tietaoJson" name="danggaiJson" />
		<s:hidden id="zuliquanJson" name="zuliquanJson" />
		<s:hidden id="xiekuaiIndex" />
		<s:hidden id="tietaoIndex" />
		<s:hidden id="zuliquanIndex" />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">
					斜拉索下锚头桥面以上数据详细&编辑</td>
			</tr>
		</table>

		<table style="width: 100%;" cellpadding="2" cellspacing="1"
			class="border" align="center">
			<tr>
				<td align="center">
					<table style="width: 98%;" cellspacing="0" cellpadding="5"
						border="1" class="tableFrom">
						<tr>
							<td height="25" width="20%" align="right">选件表名：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="#task.name" readonly="readonly" cssStyle="color: Red;" /><font
								color="gold">(不可修改)</font></td>
							<td height="25" width="20%" align="right">巡检时间：</td>
							<td height="25" width="30%" align="left"><input
								name="dateTime" type="text" value="${date} ${time}"
								id="txtDatetime"
								onfocus="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">位置：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="position" type="text"
										cssStyle="position: absolute; left: -2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">索导管、挡盖除锈积水处理：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="chuli" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">橡胶套管：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="taoguanDes"
										cssStyle="position: absolute; left: -2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">橡胶套管等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="taoguan_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">卡箍：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="kaguDes"
										cssStyle="position: absolute; left: -2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">卡箍等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="kagu_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">螺栓：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="luoshuanDes"
										cssStyle="position: absolute; left: -2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">螺栓等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="luoshuan_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">PE护套：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="hutaoDes"
										cssStyle="position: absolute; left: -2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">PE护套等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="hutao_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">挡盖：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="danggaiDes"
										cssStyle="position: absolute; left: -2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">挡盖等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="danggai_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">楔块：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="xiekuaiDes"
										cssStyle="position: absolute; left: -2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">楔块等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="xiekuai_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">减震器铁套：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="tietaoDes"
										cssStyle="position: absolute; left: -2px; top: 0px; right: 243px;"
										value="完好" />
								</div>
							</td>
							<td height="25" width="20%" align="right">减震器铁套等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="tietao_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">橡胶阻力圈：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="zuliquanDes"
										cssStyle="position: absolute; left: -2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">橡胶阻力圈等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="zuliquan_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">其它:</td>
							<td height="25" align="left" colspan="3" style="width: 60%">
								<s:textfield name="other" />
							</td>
						</tr>

						<tr>
							<td width="20%" align="right">照片：</td>
							<td width="30%" colspan="3" align="center">
								<table style="width: 98%;" cellspacing="0" cellpadding="5"
									border="1" class="tableFrom">
									<tr>
										<td align="center">橡胶套管</td>
										<td align="center">卡箍</td>
										<td align="center">螺栓</td>
										<td align="center">PE护套</td>
										<td align="center">挡盖</td>

									</tr>
									<tr>
										<td align="center"><s:select id="ddl_taoguan"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'taoguan_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="taoguanDiv">
												<a href="#" id="taoguan_a1" rel="taoguan_group" title="照片1"><img
													src="" id="taoguan_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="taoguan_a2"
													rel="taoguan_group" title="照片2"><img src=""
													id="taoguan_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="taoguan_a3"
													rel="taoguan_group" title="照片3"><img src=""
													id="taoguan_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="taoguan_a4"
													rel="taoguan_group" title="照片4"><img src=""
													id="taoguan_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="taoguan_a5"
													rel="taoguan_group" title="照片5"><img src=""
													id="taoguan_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="taoguan_a6"
													rel="taoguan_group" title="照片6"><img src=""
													id="taoguan_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'taoguan','ddl_taoguan')"
												cssClass="InputText" /></td>

										<td align="center"><s:select name="ddl_kagu"
												id="ddl_kagu"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'kagu_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="kaguDiv">
												<a href="#" id="kagu_a1" rel="kagu_group"
													title="照片1"><img src="" id="kagu_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="kagu_a2" rel="kagu_group"
													title="照片2"><img src="" id="kagu_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="kagu_a3" rel="kagu_group"
													title="照片3"><img src="" id="kagu_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="kagu_a4" rel="kagu_group"
													title="照片4"><img src="" id="kagu_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="kagu_a5" rel="kagu_group"
													title="照片5"><img src="" id="kagu_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="kagu_a6" rel="kagu_group"
													title="照片6"><img src="" id="kagu_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'kagu','ddl_kagu')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_luoshuan"
												id="ddl_luoshuan"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'luoshuan_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="luoshuanDiv">
												<a href="#" id="luoshuan_a1" rel="luoshuan_group" title="照片1"><img
													src="" id="luoshuan_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="luoshuan_a2"
													rel="luoshuan_group" title="照片2"><img src=""
													id="luoshuan_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="luoshuan_a3"
													rel="luoshuan_group" title="照片3"><img src=""
													id="luoshuan_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="luoshuan_a4"
													rel="luoshuan_group" title="照片4"><img src=""
													id="luoshuan_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="luoshuan_a5"
													rel="luoshuan_group" title="照片5"><img src=""
													id="luoshuan_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="luoshuan_a6"
													rel="luoshuan_group" title="照片6"><img src=""
													id="luoshuan_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'luoshuan','ddl_luoshuan')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_hutao"
												id="ddl_hutao"
												onchange="changeDisplay(this.selectedIndex,'hutao_img');"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value" cssClass="InputText">

											</s:select> <br />
											<div id="hutaoDiv">
												<a href="#" id="hutao_a1" rel="hutao_group" title="照片1"><img
													src="" id="hutao_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="hutao_a2"
													rel="hutao_group" title="照片2"><img src="" id="hutao_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="hutao_a3" rel="hutao_group" title="照片3"><img
													src="" id="hutao_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="hutao_a4"
													rel="hutao_group" title="照片4"><img src="" id="hutao_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="hutao_a5" rel="hutao_group" title="照片5"><img
													src="" id="hutao_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="hutao_a6"
													rel="hutao_group" title="照片6"><img src="" id="hutao_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'hutao','ddl_hutao')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_danggai"
												id="ddl_danggai"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'danggai_img');"
												cssClass="InputText">

											</s:select> <br />
											<div id="danggaiDiv">
												<a href="#" id="danggai_a1" rel="danggai_group"
													title="照片1"><img src="" id="danggai_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="danggai_a2" rel="danggai_group"
													title="照片2"><img src="" id="danggai_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="danggai_a3" rel="danggai_group"
													title="照片3"><img src="" id="danggai_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="danggai_a4" rel="danggai_group"
													title="照片4"><img src="" id="danggai_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="danggai_a5" rel="danggai_group"
													title="照片5"><img src="" id="danggai_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="danggai_a6" rel="danggai_group"
													title="照片6"><img src="" id="danggai_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'danggai','ddl_danggai')"
												cssClass="InputText" /></td>
									</tr>
									<tr>
										   <td align="center">楔块</td>
                            <td align="center">减震器铁套</td>
                            <td align="center">橡胶阻力圈</td>


									</tr>
									<tr>
										<td align="center"><s:select id="ddl_xiekuai"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'xiekuai_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="xiekuaiDiv">
												<a href="#" id="xiekuai_a1" rel="xiekuai_group" title="照片1"><img
													src="" id="xiekuai_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="xiekuai_a2"
													rel="xiekuai_group" title="照片2"><img src=""
													id="xiekuai_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="xiekuai_a3"
													rel="xiekuai_group" title="照片3"><img src=""
													id="xiekuai_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="xiekuai_a4"
													rel="xiekuai_group" title="照片4"><img src=""
													id="xiekuai_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="xiekuai_a5"
													rel="xiekuai_group" title="照片5"><img src=""
													id="xiekuai_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="xiekuai_a6"
													rel="xiekuai_group" title="照片6"><img src=""
													id="xiekuai_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'xiekuai','ddl_xiekuai')"
												cssClass="InputText" /></td>

										<td align="center"><s:select name="ddl_tietao"
												id="ddl_tietao"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'tietao_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="tietaoDiv">
												<a href="#" id="tietao_a1" rel="tietao_group"
													title="照片1"><img src="" id="tietao_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="tietao_a2" rel="tietao_group"
													title="照片2"><img src="" id="tietao_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="tietao_a3" rel="tietao_group"
													title="照片3"><img src="" id="tietao_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="tietao_a4" rel="tietao_group"
													title="照片4"><img src="" id="tietao_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="tietao_a5" rel="tietao_group"
													title="照片5"><img src="" id="tietao_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="tietao_a6" rel="tietao_group"
													title="照片6"><img src="" id="tietao_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'tietao','ddl_tietao')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_zuliquan"
												id="ddl_zuliquan"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'zuliquan_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="zuliquanDiv">
												<a href="#" id="zuliquan_a1" rel="zuliquan_group" title="照片1"><img
													src="" id="zuliquan_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="zuliquan_a2"
													rel="zuliquan_group" title="照片2"><img src=""
													id="zuliquan_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="zuliquan_a3"
													rel="zuliquan_group" title="照片3"><img src=""
													id="zuliquan_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="zuliquan_a4"
													rel="zuliquan_group" title="照片4"><img src=""
													id="zuliquan_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="zuliquan_a5"
													rel="zuliquan_group" title="照片5"><img src=""
													id="zuliquan_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="zuliquan_a6"
													rel="zuliquan_group" title="照片6"><img src=""
													id="zuliquan_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'zuliquan','ddl_zuliquan')"
												cssClass="InputText" /></td>
												</tr>
								</table>
							</td>
						</tr>
						
					</table> <br />
					<div>
						<input type="submit" value="保存" class="Button" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<!--    <input type="submit" name="btnBack" value="返回" id="btnBack" class="Button" /> -->
					</div>
				</td>
			</tr>
		</table>
	</s:form>
</body>
</html>