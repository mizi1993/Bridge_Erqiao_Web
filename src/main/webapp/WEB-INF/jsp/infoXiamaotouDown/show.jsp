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
	var hougaiImg;
	var hougaiJson;
	var yabanImg;
	var yabanJson;
	var dianbanJson;
	var dianbanImg;
	var luoshuanJson;
	var luoshuanImg;
	var maokuaitongJson;
	var maokuaitongImg;	
	var maoguquJson;
	var maoguquImg;
	var newName = new Array();
	$(function() {
		if (!($("#hougaiJson").val())) {
			$("#hougaiJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#yabanJson").val())) {
			$("#yabanJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#dianbanJson").val())) {
			$("#dianbanJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#luoshuanJson").val())) {
			$("#luoshuanJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#maokuaitongJson").val())) {
			$("#maokuaitongJson").val("{'id':0,'level':'0'}");
		}
		if (!($("#maoguquJson").val())) {
			$("#maoguquJson").val("{'id':0,'level':'0'}");
		}
		hougaiJson = eval('(' + $("#hougaiJson").val() + ')');
		hougaiImg = new Array(hougaiJson.img1, hougaiJson.img2,
				hougaiJson.img3, hougaiJson.img4, hougaiJson.img5,
				hougaiJson.img6);
		yabanJson = eval('(' + $("#yabanJson").val() + ')');
		yabanImg = new Array(yabanJson.img1,
				yabanJson.img2, yabanJson.img3,
				yabanJson.img4, yabanJson.img5,
				yabanJson.img6);
		dianbanJson = eval('(' + $("#dianbanJson").val() + ')');
		dianbanImg = new Array(dianbanJson.img1, dianbanJson.img2,
				dianbanJson.img3, dianbanJson.img4, dianbanJson.img5,
				dianbanJson.img6);
		luoshuanJson = eval('(' + $("#luoshuanJson").val() + ')');
		luoshuanImg = new Array(luoshuanJson.img1, luoshuanJson.img2, luoshuanJson.img3,
				luoshuanJson.img4, luoshuanJson.img5, luoshuanJson.img6);
		maokuaitongJson = eval('(' + $("#maokuaitongJson").val() + ')');
		maokuaitongImg = new Array(maokuaitongJson.img1,
				maokuaitongJson.img2, maokuaitongJson.img3,
				maokuaitongJson.img4, maokuaitongJson.img5,
				maokuaitongJson.img6);
		maoguquJson = eval('(' + $("#maoguquJson").val() + ')');
		maoguquImg = new Array(maoguquJson.img1,
				maoguquJson.img2, maoguquJson.img3,
				maoguquJson.img4, maoguquJson.img5,
				maoguquJson.img6);
		for (var i = 0; i < 6; i++) {
			$("#hougai_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ hougaiImg[i]);
			document.getElementById("hougai_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ hougaiImg[i];
			$("#yaban_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ yabanImg[i]);
			document.getElementById("yaban_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ yabanImg[i];
			$("#dianban_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ dianbanImg[i]);
			document.getElementById("dianban_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ dianbanImg[i];
			$("#luoshuan_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ luoshuanImg[i]);
			document.getElementById("luoshuan_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ luoshuanImg[i];
			$("#maokuaitong_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ maokuaitongImg[i]);
			document.getElementById("maokuaitong_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ maokuaitongImg[i];
			$("#maoguqu_a" + (i + 1)).attr(
					"href",
					"${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
							+ maoguquImg[i]);
			document.getElementById("maoguqu_img" + (i + 1)).src = "${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"
					+ maoguquImg[i];
		}
		$("a[rel=hougai_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=yaban_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=dianban_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=luoshuan_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=maokuaitong_group]").fancybox({
			'cyclic' : false
		});
		$("a[rel=maoguqu_group]").fancybox({
			'cyclic' : false
		});
	});
</script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form id="form1" method="post"
		action="infoXiamaotouDown_%{time== null ? 'add' : 'edit'}?taskId=%{#task.id}"
		enctype="multipart/form-data">
		<s:hidden name="id" />
		<s:hidden name="newName" id="newName" />
		<s:textfield id="hougaiJson" name="hougaiJson" />
		<s:hidden id="yabanJson" name="yabanJson" />
		<s:hidden id="dianbanJson" name="dianbanJson" />
		<s:hidden id="luoshuanJson" name="luoshuanJson" />
		<s:hidden id="maokuaitongJson" name="maokuaitongJson" />
		<s:hidden id="maoguquJson" name="maoguquJson" />
		<s:textfield id="hougaiIndex" />
		<s:hidden id="yabanIndex" />
		<s:hidden id="dianbanIndex" />
		<s:hidden id="luoshuanIndex" />
		<s:hidden id="maokuaitongIndex" />
		<s:hidden id="maoguquIndex" />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">
					斜拉索下锚头桥面以下数据详细&编辑</td>
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
									name="#task.name" readonly="readonly" cssStyle="color:Red;" /><font
								color="gold">(不可修改)</font></td>
							<td height="25" width="20%" align="right">巡检时间：</td>
							<td height="25" width="30%" align="left"><input
								name="dateTime" value="${date} ${time}"
								onfocus="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">位置：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="position"
										cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">锚头及垫板清理除锈：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="chuxiu" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">后盖：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="hougaiDes"
										cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">后盖等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="hougai_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">压板：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="yabanDes"
										cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">压板等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="yaban_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">橡胶垫板：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="dianbanDes"
										cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">橡胶垫板等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="dianban_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">螺栓：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="luoshuanDes"
										cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">螺栓等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="luoshuan_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">砼箱梁锚块砼：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="maokuaitongDes"
										cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">砼箱梁锚块砼等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="maokuaitong_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">砼梁锚固区：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="maoguquDes"
										cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">砼梁锚固区等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="maoguqu_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">其它：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="other" /></td>
							<td height="25" width="20%" align="right">积水排水情况：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="jishui" /></td>
						</tr>


						<tr>
							<td width="20%" align="right">照片：</td>
							<td width="30%" colspan="3" align="center">
								<table style="width: 98%;" cellspacing="0" cellpadding="5"
									border="1" class="tableFrom">
									<tr>
										<td align="center">后盖</td>
										<td align="center">压板</td>
										<td align="center">橡胶垫板</td>
										<td align="center">螺栓</td>
										<td align="center">砼箱梁锚块砼</td>
									</tr>
									<tr>
										<td align="center"><s:select id="ddl_hougai"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'hougai_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="hougaiDiv">
												<a href="#" id="hougai_a1" rel="hougai_group" title="照片1"><img
													src="" id="hougai_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="hougai_a2"
													rel="hougai_group" title="照片2"><img src=""
													id="hougai_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="hougai_a3"
													rel="hougai_group" title="照片3"><img src=""
													id="hougai_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="hougai_a4"
													rel="hougai_group" title="照片4"><img src=""
													id="hougai_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="hougai_a5"
													rel="hougai_group" title="照片5"><img src=""
													id="hougai_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="hougai_a6"
													rel="hougai_group" title="照片6"><img src=""
													id="hougai_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'hougai','ddl_hougai')"
												cssClass="InputText" /></td>

										<td align="center"><s:select name="ddl_yaban"
												id="ddl_yaban"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'yaban_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="yabanDiv">
												<a href="#" id="yaban_a1" rel="yaban_group"
													title="照片1"><img src="" id="yaban_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="yaban_a2" rel="yaban_group"
													title="照片2"><img src="" id="yaban_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="yaban_a3" rel="yaban_group"
													title="照片3"><img src="" id="yaban_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="yaban_a4" rel="yaban_group"
													title="照片4"><img src="" id="yaban_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="yaban_a5" rel="yaban_group"
													title="照片5"><img src="" id="yaban_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="yaban_a6" rel="yaban_group"
													title="照片6"><img src="" id="yaban_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'yaban','ddl_yaban')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_dianban"
												id="ddl_dianban"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'dianban_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="dianbanDiv">
												<a href="#" id="dianban_a1" rel="dianban_group" title="照片1"><img
													src="" id="dianban_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="dianban_a2"
													rel="dianban_group" title="照片2"><img src=""
													id="dianban_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="dianban_a3"
													rel="dianban_group" title="照片3"><img src=""
													id="dianban_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="dianban_a4"
													rel="dianban_group" title="照片4"><img src=""
													id="dianban_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="dianban_a5"
													rel="dianban_group" title="照片5"><img src=""
													id="dianban_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="dianban_a6"
													rel="dianban_group" title="照片6"><img src=""
													id="dianban_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'dianban','ddl_dianban')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_luoshuan"
												id="ddl_luoshuan"
												onchange="changeDisplay(this.selectedIndex,'luoshuan_img');"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value" cssClass="InputText">

											</s:select> <br />
											<div id="luoshuanDiv">
												<a href="#" id="luoshuan_a1" rel="luoshuan_group" title="照片1"><img
													src="" id="luoshuan_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="luoshuan_a2"
													rel="luoshuan_group" title="照片2"><img src="" id="luoshuan_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="luoshuan_a3" rel="luoshuan_group" title="照片3"><img
													src="" id="luoshuan_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="luoshuan_a4"
													rel="luoshuan_group" title="照片4"><img src="" id="luoshuan_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="luoshuan_a5" rel="luoshuan_group" title="照片5"><img
													src="" id="luoshuan_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="luoshuan_a6"
													rel="luoshuan_group" title="照片6"><img src="" id="luoshuan_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'luoshuan','ddl_luoshuan')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_maokuaitong"
												id="ddl_maokuaitong"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'maokuaitong_img');"
												cssClass="InputText">

											</s:select> <br />
											<div id="maokuaitongDiv">
												<a href="#" id="maokuaitong_a1" rel="maokuaitong_group"
													title="照片1"><img src="" id="maokuaitong_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="maokuaitong_a2" rel="maokuaitong_group"
													title="照片2"><img src="" id="maokuaitong_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="maokuaitong_a3" rel="maokuaitong_group"
													title="照片3"><img src="" id="maokuaitong_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="maokuaitong_a4" rel="maokuaitong_group"
													title="照片4"><img src="" id="maokuaitong_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="maokuaitong_a5" rel="maokuaitong_group"
													title="照片5"><img src="" id="maokuaitong_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="maokuaitong_a6" rel="maokuaitong_group"
													title="照片6"><img src="" id="maokuaitong_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'maokuaitong','ddl_maokuaitong')"
												cssClass="InputText" /></td>
									</tr>
									<tr>
										 <td align="center">砼梁锚固区</td>
									</tr>
									<tr>
										<td align="center"><s:select id="ddl_maoguqu"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'maoguqu_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="maoguquDiv">
												<a href="#" id="maoguqu_a1" rel="maoguqu_group" title="照片1"><img
													src="" id="maoguqu_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="maoguqu_a2"
													rel="maoguqu_group" title="照片2"><img src=""
													id="maoguqu_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="maoguqu_a3"
													rel="maoguqu_group" title="照片3"><img src=""
													id="maoguqu_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="maoguqu_a4"
													rel="maoguqu_group" title="照片4"><img src=""
													id="maoguqu_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="maoguqu_a5"
													rel="maoguqu_group" title="照片5"><img src=""
													id="maoguqu_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="maoguqu_a6"
													rel="maoguqu_group" title="照片6"><img src=""
													id="maoguqu_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'maoguqu','ddl_maoguqu')"
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