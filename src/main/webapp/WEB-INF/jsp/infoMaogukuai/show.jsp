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
       var diaoqiImg;
       var diaoqiJson;
       var bianxingImg;
       var bianxingJson;
       var hunningtuJson;
       var hunningtuImg;
       var maoshuanJson;
       var maoshuanImg;
       var jiaocengJson;
       var jiaocengImg;
       var newName=new Array();
       $(function(){
    	   if(!($("#diaoqiJson").val())){
    		   $("#diaoqiJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#bianxingJson").val())){
    		   $("#bianxingJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#hunningtuJson").val())){
    		   $("#hunningtuJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#maoshuanJson").val())){
    		   $("#maoshuanJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#jiaocengJson").val())){
    		   $("#jiaocengJson").val("{'id':0,'level':'0'}");
    	   }
    	   diaoqiJson=eval('('+$("#diaoqiJson").val()+')');
    	   diaoqiImg=new Array(diaoqiJson.img1,diaoqiJson.img2,diaoqiJson.img3,diaoqiJson.img4,diaoqiJson.img5,diaoqiJson.img6);
    	   bianxingJson=eval('('+$("#bianxingJson").val()+')');
    	   bianxingImg=new Array(bianxingJson.img1,bianxingJson.img2,bianxingJson.img3,bianxingJson.img4,bianxingJson.img5,bianxingJson.img6);
    	   hunningtuJson=eval('('+$("#hunningtuJson").val()+')');
    	   hunningtuImg=new Array(hunningtuJson.img1,hunningtuJson.img2,hunningtuJson.img3,hunningtuJson.img4,hunningtuJson.img5,hunningtuJson.img6);
    	   maoshuanJson=eval('('+$("#maoshuanJson").val()+')');
    	   maoshuanImg=new Array(maoshuanJson.img1,maoshuanJson.img2,maoshuanJson.img3,maoshuanJson.img4,maoshuanJson.img5,maoshuanJson.img6);
    	   jiaocengJson=eval('('+$("#jiaocengJson").val()+')');
    	   jiaocengImg=new Array(jiaocengJson.img1,jiaocengJson.img2,jiaocengJson.img3,jiaocengJson.img4,jiaocengJson.img5,jiaocengJson.img6);
    	   
    	   for(var i=0;i<6;i++) {
    		   $("#diaoqi_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+diaoqiImg[i]);
    	     	document.getElementById("diaoqi_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+diaoqiImg[i];
    	     	 $("#bianxing_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+bianxingImg[i]);
     	     	document.getElementById("bianxing_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+bianxingImg[i];
     	     	 $("#hunningtu_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+hunningtuImg[i]);
     	     	document.getElementById("hunningtu_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+hunningtuImg[i];
     	     	 $("#maoshuan_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+maoshuanImg[i]);
     	     	document.getElementById("maoshuan_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+maoshuanImg[i];
     	     	 $("#jiaoceng_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+jiaocengImg[i]);
     	     	document.getElementById("jiaoceng_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+jiaocengImg[i];
    	   }
    	   $("a[rel=diaoqi_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=bianxing_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=hunningtu_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=maoshuan_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=jiaoceng_group]").fancybox({
               'cyclic': false
           });
    	   
       });
       
    </script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form id="form1" method="post"
		action="infoMaogukuai_%{time== null ? 'add' : 'edit'}?taskId=%{#task.id}"
		enctype="multipart/form-data">
		<!-- enctype="multipart/form-data" -->
		<s:hidden name="id" />
		<s:hidden name="newName" id="newName" />
		<s:textfield id="diaoqiJson" name="diaoqiJson" />
		<s:hidden id="bianxingJson" name="bianxingJson" />
		<s:hidden id="hunningtuJson" name="hunningtuJson" />
		<s:hidden id="maoshuanJson" name="maoshuanJson" />
		<s:hidden id="jiaocengJson" name="jiaocengJson" />
		<s:textfield id="diaoqiIndex" />
		<s:hidden id="bianxingIndex" />
		<s:hidden id="hunningtuIndex" />
		<s:hidden id="maoshuanIndex" />
		<s:hidden id="jiaocengIndex" />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle"> 锚固块数据详细&编辑
</td>
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
								name="#task.name" 
								readonly="readonly"  style="color: Red;" /><font
								color="gold">(不可修改)</font></td>
							<td height="25" width="20%" align="right">巡检时间：</td>
							<td height="25" width="30%" align="left"><input
								name="dateTime" type="text" value="${date} ${time}"
								onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
							</td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">部位及墩号：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">

									<s:textfield name="position" 
										style="position: absolute; left: -2px; top: 0px; right: 243px;"
									/>
								</div>
							</td>
							<td height="25" width="20%" align="right">类型：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="type" 
										style="position: absolute; left: -2px; top: 0px; right: 243px;"
									/>
								</div>
							</td>
						</tr>
						<tr>
							<td width="20%" align="right" class="style1">钢构件掉漆、生锈：</td>
							<td width="30%" align="left" class="style1">
								<div style="position: relative;">
										<s:textfield name="diaoqiDes"
										style="position: absolute; left: -2px; top: 0px; right: 243px;"
									/>
								</div>
							</td>
							<td width="20%" align="right" class="style1">体外预应力索编号：</td>
							<td width="30%" align="left" class="style1">
								<div style="position: relative;">
									<s:textfield name="no" 
										cssStyle="position: absolute; left: -2px; top: 0px; right: 243px;"
									/>
								</div>
							</td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">钢构件变形、开裂：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
								<s:textfield name="bianxingDes" 
										style="position: absolute; left: -2px; top: 0px; right: 243px;"
										 />
								</div>
							</td>
							<td height="25" width="20%" align="right">检查内部位：</td>
							<td height="25" width="30%" align="left"><select
								name="up_down" 
								style="height: 16px; width: 150px;">
									<option selected="selected" value="上游箱室">上游箱室</option>
									<option value="下游箱室">下游箱室</option>

							</select></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">混凝土：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">

									 <s:textfield name="hunningtuDes" 
										style="position: absolute; left: -2px; top: 0px; right: 245px;"
								/>
								</div>
							</td>
							<td height="25" width="20%" align="right">备注：</td>
							<td height="25" width="30%" align="left"><s:textfield
								name="other" type="text"  /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">锚栓：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">

									<s:textfield name="maoshuanDes" 
										style="position: absolute; left: -2px; top: 0px; right: 243px;"
									 />
								</div>
							</td>
							<td height="25" width="20%" align="right">其它：</td>
							<td height="25" width="30%" align="left"><s:textfield
								name="other"  /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">胶层：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">

									<s:textfield name="jiaocengDes" 
										style="position: absolute; left: -2px; top: 0px; right: 243px;"
									/>
								</div>
							</td>
							<td height="25" width="20%" align="right">&nbsp;</td>
							<td height="25" width="30%" align="left">&nbsp;</td>
						</tr>

						<tr>
							<td width="20%" align="right">照片：</td>
							<td width="30%" colspan="3" align="center">
								<table style="width: 98%;" cellspacing="0" cellpadding="5"
									border="1" class="tableFrom">
									<tr>
										<td align="center">钢构件掉漆、生锈</td>
										<td align="center">钢构件变形、开裂</td>
										<td align="center">混凝土</td>
										<td align="center">锚栓</td>
										<td align="center">胶层</td>

									</tr>
									<tr>
										<td align="center"><s:select id="ddl_diaoqi"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'diaoqi_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="diaoqiDiv">
												<a href="#" id="diaoqi_a1" rel="diaoqi_group" title="照片1"><img
													src="" id="diaoqi_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="diaoqi_a2"
													rel="diaoqi_group" title="照片2"><img src=""
													id="diaoqi_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="diaoqi_a3"
													rel="diaoqi_group" title="照片3"><img src=""
													id="diaoqi_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="diaoqi_a4"
													rel="diaoqi_group" title="照片4"><img src=""
													id="diaoqi_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="diaoqi_a5"
													rel="diaoqi_group" title="照片5"><img src=""
													id="diaoqi_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="diaoqi_a6"
													rel="diaoqi_group" title="照片6"><img src=""
													id="diaoqi_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'diaoqi','ddl_diaoqi')"
												cssClass="InputText" /></td>

										<td align="center"><s:select name="ddl_bianxing"
												id="ddl_bianxing"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'bianxing_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="bianxingDiv">
												<a href="#" id="bianxing_a1" rel="bianxing_group"
													title="照片1"><img src="" id="bianxing_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="bianxing_a2" rel="bianxing_group"
													title="照片2"><img src="" id="bianxing_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="bianxing_a3" rel="bianxing_group"
													title="照片3"><img src="" id="bianxing_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="bianxing_a4" rel="bianxing_group"
													title="照片4"><img src="" id="bianxing_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="bianxing_a5" rel="bianxing_group"
													title="照片5"><img src="" id="bianxing_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="bianxing_a6" rel="bianxing_group"
													title="照片6"><img src="" id="bianxing_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'bianxing','ddl_bianxing')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_hunningtu"
												id="ddl_hunningtu"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'hunningtu_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="hunningtuDiv">
												<a href="#" id="hunningtu_a1" rel="hunningtu_group" title="照片1"><img
													src="" id="hunningtu_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="hunningtu_a2"
													rel="hunningtu_group" title="照片2"><img src=""
													id="hunningtu_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="hunningtu_a3"
													rel="hunningtu_group" title="照片3"><img src=""
													id="hunningtu_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="hunningtu_a4"
													rel="hunningtu_group" title="照片4"><img src=""
													id="hunningtu_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="hunningtu_a5"
													rel="hunningtu_group" title="照片5"><img src=""
													id="hunningtu_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="hunningtu_a6"
													rel="hunningtu_group" title="照片6"><img src=""
													id="hunningtu_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'hunningtu','ddl_hunningtu')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_maoshuan"
												id="ddl_maoshuan"
												onchange="changeDisplay(this.selectedIndex,'maoshuan_img');"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value" cssClass="InputText">

											</s:select> <br />
											<div id="maoshuanDiv">
												<a href="#" id="maoshuan_a1" rel="maoshuan_group" title="照片1"><img
													src="" id="maoshuan_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="maoshuan_a2"
													rel="maoshuan_group" title="照片2"><img src="" id="maoshuan_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="maoshuan_a3" rel="maoshuan_group" title="照片3"><img
													src="" id="maoshuan_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="maoshuan_a4"
													rel="maoshuan_group" title="照片4"><img src="" id="maoshuan_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="maoshuan_a5" rel="maoshuan_group" title="照片5"><img
													src="" id="maoshuan_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="maoshuan_a6"
													rel="maoshuan_group" title="照片6"><img src="" id="maoshuan_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'maoshuan','ddl_maoshuan')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_jiaoceng"
												id="ddl_jiaoceng"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'jiaoceng_img');"
												cssClass="InputText">

											</s:select> <br />
											<div id="jiaocengDiv">
												<a href="#" id="jiaoceng_a1" rel="jiaoceng_group"
													title="照片1"><img src="" id="jiaoceng_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="jiaoceng_a2" rel="jiaoceng_group"
													title="照片2"><img src="" id="jiaoceng_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="jiaoceng_a3" rel="jiaoceng_group"
													title="照片3"><img src="" id="jiaoceng_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="jiaoceng_a4" rel="jiaoceng_group"
													title="照片4"><img src="" id="jiaoceng_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="jiaoceng_a5" rel="jiaoceng_group"
													title="照片5"><img src="" id="jiaoceng_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="jiaoceng_a6" rel="jiaoceng_group"
													title="照片6"><img src="" id="jiaoceng_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'jiaoceng','ddl_jiaoceng')"
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