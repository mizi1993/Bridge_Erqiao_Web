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
       var goujianImg;
       var goujianJson;
       var xiangjiaodaiImg;
       var xiangjiaodaiJson;
       var shuchiJson;
       var shuchiImg;
       var duseJson;
       var duseImg;
       var fengpingzhengJson;
       var fengpingzhengImg;
       var newName=new Array();
       $(function(){
    	   if(!($("#goujianJson").val())){
    		   $("#goujianJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#xiangjiaodaiJson").val())){
    		   $("#xiangjiaodaiJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#shuchiJson").val())){
    		   $("#shuchiJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#duseJson").val())){
    		   $("#duseJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#fengpingzhengJson").val())){
    		   $("#fengpingzhengJson").val("{'id':0,'level':'0'}");
    	   }
    	   goujianJson=eval('('+$("#goujianJson").val()+')');
    	   goujianImg=new Array(goujianJson.img1,goujianJson.img2,goujianJson.img3,goujianJson.img4,goujianJson.img5,goujianJson.img6);
    	   xiangjiaodaiJson=eval('('+$("#xiangjiaodaiJson").val()+')');
    	   xiangjiaodaiImg=new Array(xiangjiaodaiJson.img1,xiangjiaodaiJson.img2,xiangjiaodaiJson.img3,xiangjiaodaiJson.img4,xiangjiaodaiJson.img5,xiangjiaodaiJson.img6);
    	   shuchiJson=eval('('+$("#shuchiJson").val()+')');
    	   shuchiImg=new Array(shuchiJson.img1,shuchiJson.img2,shuchiJson.img3,shuchiJson.img4,shuchiJson.img5,shuchiJson.img6);
    	   duseJson=eval('('+$("#duseJson").val()+')');
    	   duseImg=new Array(duseJson.img1,duseJson.img2,duseJson.img3,duseJson.img4,duseJson.img5,duseJson.img6);
    	   fengpingzhengJson=eval('('+$("#fengpingzhengJson").val()+')');
    	   fengpingzhengImg=new Array(fengpingzhengJson.img1,fengpingzhengJson.img2,fengpingzhengJson.img3,fengpingzhengJson.img4,fengpingzhengJson.img5,fengpingzhengJson.img6);
    	   
    	   for(var i=0;i<6;i++) {
    		   $("#goujian_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+goujianImg[i]);
    	     	document.getElementById("goujian_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+goujianImg[i];
    	     	 $("#xiangjiaodai_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+xiangjiaodaiImg[i]);
     	     	document.getElementById("xiangjiaodai_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+xiangjiaodaiImg[i];
     	     	 $("#shuchi_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+shuchiImg[i]);
     	     	document.getElementById("shuchi_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+shuchiImg[i];
     	     	 $("#duse_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+duseImg[i]);
     	     	document.getElementById("duse_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+duseImg[i];
     	     	 $("#fengpingzheng_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+fengpingzhengImg[i]);
     	     	document.getElementById("fengpingzheng_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+fengpingzhengImg[i];
    	   }
    	   $("a[rel=goujian_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=xiangjiaodai_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=shuchi_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=duse_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=fengpingzheng_group]").fancybox({
               'cyclic': false
           });
    	   
       });
       
    </script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form id="form1" method="post"
		action="infoShensuofeng_%{time== null ? 'add' : 'edit'}?taskId=%{#task.id}"
		enctype="multipart/form-data">
		<!-- enctype="multipart/form-data" -->
		<s:hidden name="id" />
		<s:hidden name="newName" id="newName" />
		<s:textfield id="goujianJson" name="goujianJson" />
		<s:hidden id="xiangjiaodaiJson" name="xiangjiaodaiJson" />
		<s:hidden id="shuchiJson" name="shuchiJson" />
		<s:hidden id="duseJson" name="duseJson" />
		<s:hidden id="fengpingzhengJson" name="fengpingzhengJson" />
		<s:textfield id="goujianIndex" />
		<s:hidden id="xiangjiaodaiIndex" />
		<s:hidden id="shuchiIndex" />
		<s:hidden id="duseIndex" />
		<s:hidden id="fengpingzhengIndex" />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">伸缩缝数据详细&编辑</td>
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
									name="#task.name" readonly="readonly" id="txtForm"
									style="color:Red;" /><font color="gold">(不可修改)</font></td>
							<td height="25" width="20%" align="right">巡检时间：</td>
							<td height="25" width="30%" align="left"><input
								name="dateTime" type="text" value="${date}&nbsp${time}"
								id="txtDatetime"
								onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">墩台号：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="position"
										style="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">类型：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="type" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">齿间距(mm)：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="chijianju" /></td>
							<td height="25" width="20%" align="right">伸缩量(mm)：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="shensuoliang" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">构件：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="goujianDes"
										style="position:absolute;left:-2px; top: 0px; right: 245px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">构件等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="goujian_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">橡胶带：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="xiangjiaodaiDes"
										style="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">橡胶带等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="xiangjiaodai_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">梳齿：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="shuchiDes"
										style="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">梳齿等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="shuchi_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">堵塞：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="duseDes"
										style="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">堵塞等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="duse_level" /></td>
						</tr>
						<tr>
							<td height="25" width="20%" align="right">缝平整：</td>
							<td height="25" width="30%" align="left">
								<div style="position: relative;">
									<s:textfield name="fengpingzhengDes"
										style="position:absolute;left:-2px; top: 0px; right: 243px;" />
								</div>
							</td>
							<td height="25" width="20%" align="right">缝平整等级：</td>
							<td height="25" width="30%" align="left"><s:textfield
									name="fengpingzheng_level" /></td>
						</tr>
						<tr>
							<td width="20%" align="right">照片：</td>
							<td width="30%" colspan="3" align="center">
								<table style="width: 98%;" cellspacing="0" cellpadding="5"
									border="1" class="tableFrom">
									<tr>
										<td align="center">构件</td>
										<td align="center">橡胶带</td>
										<td align="center">梳齿</td>
										<td align="center">堵塞</td>
										<td align="center">缝平整</td>
									</tr>
									<tr>
										<td align="center">
										<s:select 
												id="ddl_goujian"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'goujian_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="goujianDiv">
												<a href="#" id="goujian_a1" rel="goujian_group" title="照片1"><img
													src="" id="goujian_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="goujian_a2"
													rel="goujian_group" title="照片2"><img src=""
													id="goujian_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="goujian_a3"
													rel="goujian_group" title="照片3"><img src=""
													id="goujian_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="goujian_a4"
													rel="goujian_group" title="照片4"><img src=""
													id="goujian_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="goujian_a5"
													rel="goujian_group" title="照片5"><img src=""
													id="goujian_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="goujian_a6"
													rel="goujian_group" title="照片6"><img src=""
													id="goujian_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'goujian','ddl_goujian')"
												cssClass="InputText" /></td>

										<td align="center"><s:select name="ddl_xiangjiaodai"
											id="ddl_xiangjiaodai"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
											listKey="key" listValue="value"
											onchange="changeDisplay(this.selectedIndex,'xiangjiaodai_img');"
											cssClass="InputText">
										</s:select> <br />
											<div id="xiangjiaodaiDiv">
												<a href="#" id="xiangjiaodai_a1" rel="xiangjiaodai_group"
													title="照片1"><img src="" id="xiangjiaodai_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="xiangjiaodai_a2" rel="xiangjiaodai_group"
													title="照片2"><img src="" id="xiangjiaodai_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="xiangjiaodai_a3" rel="xiangjiaodai_group"
													title="照片3"><img src="" id="xiangjiaodai_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="xiangjiaodai_a4" rel="xiangjiaodai_group"
													title="照片4"><img src="" id="xiangjiaodai_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="xiangjiaodai_a5" rel="xiangjiaodai_group"
													title="照片5"><img src="" id="xiangjiaodai_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="xiangjiaodai_a6" rel="xiangjiaodai_group"
													title="照片6"><img src="" id="xiangjiaodai_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'xiangjiaodai','ddl_xiangjiaodai')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_shuchi"
											id="ddl_shuchi"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
											listKey="key" listValue="value"
											onchange="changeDisplay(this.selectedIndex,'shuchi_img');"
											cssClass="InputText">
										</s:select> <br /> <div id="shuchiDiv">
												<a href="#" id="shuchi_a1" rel="shuchi_group"
													title="照片1"><img src="" id="shuchi_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="shuchi_a2" rel="shuchi_group"
													title="照片2"><img src="" id="shuchi_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="shuchi_a3" rel="shuchi_group"
													title="照片3"><img src="" id="shuchi_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="shuchi_a4" rel="shuchi_group"
													title="照片4"><img src="" id="shuchi_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="shuchi_a5" rel="shuchi_group"
													title="照片5"><img src="" id="shuchi_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="shuchi_a6" rel="shuchi_group"
													title="照片6"><img src="" id="shuchi_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'shuchi','ddl_shuchi')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_duse" id="ddl_duse"
											onchange="changeDisplay(this.selectedIndex,'duse_img');"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
											cssClass="InputText">

										</s:select> <br /> <div id="duseDiv">
												<a href="#" id="duse_a1" rel="duse_group"
													title="照片1"><img src="" id="duse_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="duse_a2" rel="duse_group"
													title="照片2"><img src="" id="duse_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="duse_a3" rel="duse_group"
													title="照片3"><img src="" id="duse_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="duse_a4" rel="duse_group"
													title="照片4"><img src="" id="duse_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="duse_a5" rel="duse_group"
													title="照片5"><img src="" id="duse_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="duse_a6" rel="duse_group"
													title="照片6"><img src="" id="duse_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'duse','ddl_duse')"
												cssClass="InputText" /></td>
										<td align="center"> <s:select
											name="ddl_fengpingzheng" id="ddl_fengpingzheng"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
											onchange="changeDisplay(this.selectedIndex,'fengpingzheng_img');"
											cssClass="InputText">

										</s:select>   <br />
                                <div id="fengpingzhengDiv">
												<a href="#" id="fengpingzheng_a1" rel="fengpingzheng_group"
													title="照片1"><img src="" id="fengpingzheng_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="fengpingzheng_a2" rel="fengpingzheng_group"
													title="照片2"><img src="" id="fengpingzheng_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="fengpingzheng_a3" rel="fengpingzheng_group"
													title="照片3"><img src="" id="fengpingzheng_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="fengpingzheng_a4" rel="fengpingzheng_group"
													title="照片4"><img src="" id="fengpingzheng_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="fengpingzheng_a5" rel="fengpingzheng_group"
													title="照片5"><img src="" id="fengpingzheng_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="fengpingzheng_a6" rel="fengpingzheng_group"
													title="照片6"><img src="" id="fengpingzheng_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'fengpingzheng','ddl_fengpingzheng')"
												cssClass="InputText" />
                            </td>
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