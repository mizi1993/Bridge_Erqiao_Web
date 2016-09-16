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
       var cuoweiImg;
       var cuoweiJson;
       var restImg;
       var restJson;
       var hutaoJson;
       var hutaoImg;
       var suojiaJson;
       var suojiaImg;
       var jianzhenqiJson;
       var jianzhenqiImg;
       var newName=new Array();
       $(function(){
    	   if(!($("#cuoweiJson").val())){
    		   $("#cuoweiJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#restJson").val())){
    		   $("#restJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#hutaoJson").val())){
    		   $("#hutaoJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#suojiaJson").val())){
    		   $("#suojiaJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#jianzhenqiJson").val())){
    		   $("#jianzhenqiJson").val("{'id':0,'level':'0'}");
    	   }
    	   cuoweiJson=eval('('+$("#cuoweiJson").val()+')');
    	   cuoweiImg=new Array(cuoweiJson.img1,cuoweiJson.img2,cuoweiJson.img3,cuoweiJson.img4,cuoweiJson.img5,cuoweiJson.img6);
    	   restJson=eval('('+$("#restJson").val()+')');
    	   restImg=new Array(restJson.img1,restJson.img2,restJson.img3,restJson.img4,restJson.img5,restJson.img6);
    	   hutaoJson=eval('('+$("#hutaoJson").val()+')');
    	   hutaoImg=new Array(hutaoJson.img1,hutaoJson.img2,hutaoJson.img3,hutaoJson.img4,hutaoJson.img5,hutaoJson.img6);
    	   suojiaJson=eval('('+$("#suojiaJson").val()+')');
    	   suojiaImg=new Array(suojiaJson.img1,suojiaJson.img2,suojiaJson.img3,suojiaJson.img4,suojiaJson.img5,suojiaJson.img6);
    	   jianzhenqiJson=eval('('+$("#jianzhenqiJson").val()+')');
    	   jianzhenqiImg=new Array(jianzhenqiJson.img1,jianzhenqiJson.img2,jianzhenqiJson.img3,jianzhenqiJson.img4,jianzhenqiJson.img5,jianzhenqiJson.img6);
    	   
    	   for(var i=0;i<6;i++) {
    		   $("#cuowei_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+cuoweiImg[i]);
    	     	document.getElementById("cuowei_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+cuoweiImg[i];
    	     	 $("#rest_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+restImg[i]);
     	     	document.getElementById("rest_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+restImg[i];
     	     	 $("#hutao_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+hutaoImg[i]);
     	     	document.getElementById("hutao_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+hutaoImg[i];
     	     	 $("#suojia_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+suojiaImg[i]);
     	     	document.getElementById("suojia_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+suojiaImg[i];
     	     	 $("#jianzhenqi_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+jianzhenqiImg[i]);
     	     	document.getElementById("jianzhenqi_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+jianzhenqiImg[i];
    	   }
    	   $("a[rel=cuowei_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=rest_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=hutao_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=suojia_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=jianzhenqi_group]").fancybox({
               'cyclic': false
           });
    	   
       });
       
    </script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form id="form1" method="post"
		action="infoXielasuo_%{time== null ? 'add' : 'edit'}?taskId=%{#task.id}"
		enctype="multipart/form-data">
		<s:hidden name="id" />
		<s:hidden name="newName" id="newName" />
		<s:textfield id="cuoweiJson" name="cuoweiJson" />
		<s:hidden id="restJson" name="restJson" />
		<s:hidden id="hutaoJson" name="hutaoJson" />
		<s:hidden id="suojiaJson" name="suojiaJson" />
		<s:hidden id="jianzhenqiJson" name="jianzhenqiJson" />
		<s:textfield id="cuoweiIndex" />
		<s:hidden id="restIndex" />
		<s:hidden id="hutaoIndex" />
		<s:hidden id="suojiaIndex" />
		<s:hidden id="jianzhenqiIndex" />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="40" align="center" class="GridTitle">  斜拉索数据详细&编辑
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
                <td height="25" width="20%" align="right">
		            选件表名：
	            </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="#task.name" readonly="readonly" cssStyle="color:Red;" /><font color="gold">(不可修改)</font>
                </td>
                <td height="25" width="20%" align="right">
                    巡检时间：
                </td>
                <td height="25" width="30%" align="left">
                    <input name="dateTime" type="text" value="${date} ${time}" onfocus="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})" />
                </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    位置：
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;"> 
                   <s:textfield name="position" cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;"/> 
               </div>
                </td>
                <td height="25" width="20%" align="right">
                    备注：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="other" />
                </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    减震器错位：
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;"> 
                   <s:textfield name="cuoweiDes"  cssStyle="position:absolute;left:-2px; top: 0px; right: 245px;" /> 
               </div>
                </td>
                <td height="25" width="20%" align="right">
                    其他：</td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;"> 
                   <s:textfield name="restDes" cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;"/> 
               </div>
               </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    PE及PVE护套：
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;"> 
                   <s:textfield name="hutaoDes" cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;" /> 
               </div>
                </td>
                <td height="25" width="20%" align="right">
                    护套等级：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="hutao_level" />
                </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    索夹：
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;"> 
                   <s:textfield name="suojia_level" cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;" /> 
               </div>
                </td>
                <td height="25" width="20%" align="right">
                    &nbsp;</td>
                <td height="25" width="30%" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    减震器：
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;"> 
                   <s:textfield name="jianzhenqiDes" cssStyle="position:absolute;left:-2px; top: 0px; right: 243px;"  /> 
               </div>
                </td>
                <td height="25" width="20%" align="right">
                    减震器等级：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="jianzhenqi_level"  />
                </td>
            </tr>

						<tr>
							<td width="20%" align="right">照片：</td>
							<td width="30%" colspan="3" align="center">
								<table style="width: 98%;" cellspacing="0" cellpadding="5"
									border="1" class="tableFrom">
									<tr>
                            <td align="center">减震器错位</td>
                            <td align="center">其他</td>
                            <td align="center">PE及PVE护套</td>
                            <td align="center">索夹</td>
                            <td align="center">减震器</td>
                        </tr>

									</tr>
									<tr>
										<td align="center">
										<s:select 
												id="ddl_cuowei"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'cuowei_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="cuoweiDiv">
												<a href="#" id="cuowei_a1" rel="cuowei_group" title="照片1"><img
													src="" id="cuowei_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="cuowei_a2"
													rel="cuowei_group" title="照片2"><img src=""
													id="cuowei_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="cuowei_a3"
													rel="cuowei_group" title="照片3"><img src=""
													id="cuowei_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="cuowei_a4"
													rel="cuowei_group" title="照片4"><img src=""
													id="cuowei_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="cuowei_a5"
													rel="cuowei_group" title="照片5"><img src=""
													id="cuowei_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="cuowei_a6"
													rel="cuowei_group" title="照片6"><img src=""
													id="cuowei_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'cuowei','ddl_cuowei')"
												cssClass="InputText" /></td>

										<td align="center"><s:select name="ddl_rest"
											id="ddl_rest"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
											listKey="key" listValue="value"
											onchange="changeDisplay(this.selectedIndex,'rest_img');"
											cssClass="InputText">
										</s:select> <br />
											<div id="restDiv">
												<a href="#" id="rest_a1" rel="rest_group"
													title="照片1"><img src="" id="rest_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="rest_a2" rel="rest_group"
													title="照片2"><img src="" id="rest_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="rest_a3" rel="rest_group"
													title="照片3"><img src="" id="rest_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="rest_a4" rel="rest_group"
													title="照片4"><img src="" id="rest_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="rest_a5" rel="rest_group"
													title="照片5"><img src="" id="rest_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="rest_a6" rel="rest_group"
													title="照片6"><img src="" id="rest_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'rest','ddl_rest')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_hutao"
											id="ddl_hutao"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
											listKey="key" listValue="value"
											onchange="changeDisplay(this.selectedIndex,'hutao_img');"
											cssClass="InputText">
										</s:select> <br /> <div id="hutaoDiv">
												<a href="#" id="hutao_a1" rel="hutao_group"
													title="照片1"><img src="" id="hutao_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="hutao_a2" rel="hutao_group"
													title="照片2"><img src="" id="hutao_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="hutao_a3" rel="hutao_group"
													title="照片3"><img src="" id="hutao_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="hutao_a4" rel="hutao_group"
													title="照片4"><img src="" id="hutao_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="hutao_a5" rel="hutao_group"
													title="照片5"><img src="" id="hutao_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="hutao_a6" rel="hutao_group"
													title="照片6"><img src="" id="hutao_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'hutao','ddl_hutao')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_suojia" id="ddl_suojia"
											onchange="changeDisplay(this.selectedIndex,'suojia_img');"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
											cssClass="InputText">

										</s:select> <br /> <div id="suojiaDiv">
												<a href="#" id="suojia_a1" rel="suojia_group"
													title="照片1"><img src="" id="suojia_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="suojia_a2" rel="suojia_group"
													title="照片2"><img src="" id="suojia_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="suojia_a3" rel="suojia_group"
													title="照片3"><img src="" id="suojia_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="suojia_a4" rel="suojia_group"
													title="照片4"><img src="" id="suojia_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="suojia_a5" rel="suojia_group"
													title="照片5"><img src="" id="suojia_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="suojia_a6" rel="suojia_group"
													title="照片6"><img src="" id="suojia_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'suojia','ddl_suojia')"
												cssClass="InputText" /></td>
										<td align="center"> <s:select
											name="ddl_jianzhenqi" id="ddl_jianzhenqi"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
											onchange="changeDisplay(this.selectedIndex,'jianzhenqi_img');"
											cssClass="InputText">

										</s:select>   <br />
                                <div id="jianzhenqiDiv">
												<a href="#" id="jianzhenqi_a1" rel="jianzhenqi_group"
													title="照片1"><img src="" id="jianzhenqi_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="jianzhenqi_a2" rel="jianzhenqi_group"
													title="照片2"><img src="" id="jianzhenqi_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="jianzhenqi_a3" rel="jianzhenqi_group"
													title="照片3"><img src="" id="jianzhenqi_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="jianzhenqi_a4" rel="jianzhenqi_group"
													title="照片4"><img src="" id="jianzhenqi_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="jianzhenqi_a5" rel="jianzhenqi_group"
													title="照片5"><img src="" id="jianzhenqi_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="jianzhenqi_a6" rel="jianzhenqi_group"
													title="照片6"><img src="" id="jianzhenqi_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'jianzhenqi','ddl_jianzhenqi')"
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