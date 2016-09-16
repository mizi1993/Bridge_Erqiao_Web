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
       var chenjiangImg;
       var chenjiangJson;
       var kailieImg;
       var kailieJson;
       var waiyiJson;
       var waiyImg;
       var tantaJson;
       var tantaImg;
       var newName=new Array();
       $(function(){
    	   if(!($("#chenjiangJson").val())){
    		   $("#chenjiangJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#kailieJson").val())){
    		   $("#kailieJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#waiyiJson").val())){
    		   $("#waiyiJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#tantaJson").val())){
    		   $("#tantaJson").val("{'id':0,'level':'0'}");
    	   }
    	   if(!($("#fengpingzhengJson").val())){
    		   $("#fengpingzhengJson").val("{'id':0,'level':'0'}");
    	   }
    	   chenjiangJson=eval('('+$("#chenjiangJson").val()+')');
    	   chenjiangImg=new Array(chenjiangJson.img1,chenjiangJson.img2,chenjiangJson.img3,chenjiangJson.img4,chenjiangJson.img5,chenjiangJson.img6);
    	   kailieJson=eval('('+$("#kailieJson").val()+')');
    	   kailieImg=new Array(kailieJson.img1,kailieJson.img2,kailieJson.img3,kailieJson.img4,kailieJson.img5,kailieJson.img6);
    	   waiyiJson=eval('('+$("#waiyiJson").val()+')');
    	   waiyiImg=new Array(waiyiJson.img1,waiyiJson.img2,waiyiJson.img3,waiyiJson.img4,waiyiJson.img5,waiyiJson.img6);
    	   tantaJson=eval('('+$("#tantaJson").val()+')');
    	   tantaImg=new Array(tantaJson.img1,tantaJson.img2,tantaJson.img3,tantaJson.img4,tantaJson.img5,tantaJson.img6);
    	   fengpingzhengJson=eval('('+$("#fengpingzhengJson").val()+')');
    	   fengpingzhengImg=new Array(fengpingzhengJson.img1,fengpingzhengJson.img2,fengpingzhengJson.img3,fengpingzhengJson.img4,fengpingzhengJson.img5,fengpingzhengJson.img6);
    	   
    	   for(var i=0;i<6;i++) {
    		   $("#chenjiang_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+chenjiangImg[i]);
    	     	document.getElementById("chenjiang_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+chenjiangImg[i];
    	     	 $("#kailie_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+kailieImg[i]);
     	     	document.getElementById("kailie_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+kailieImg[i];
     	     	 $("#waiyi_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+waiyiImg[i]);
     	     	document.getElementById("waiyi_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+waiyiImg[i];
     	     	 $("#tanta_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+tantaImg[i]);
     	     	document.getElementById("tanta_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+tantaImg[i];
    	   }
    	   $("a[rel=chenjiang_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=kailie_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=waiyi_group]").fancybox({
               'cyclic': false
           });
    	   $("a[rel=tanta_group]").fancybox({
               'cyclic': false
           });
    	   
       });
       
    </script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form id="form1" method="post"
		action="infoHupo_%{time== null ? 'add' : 'edit'}?taskId=%{#task.id}"
		enctype="multipart/form-data">
		<!-- enctype="multipart/form-data" -->
		<s:hidden name="id" />
		<s:hidden name="newName" id="newName" />
		<s:textfield id="chenjiangJson" name="chenjiangJson" />
		<s:hidden id="kailieJson" name="kailieJson" />
		<s:hidden id="waiyiJson" name="waiyiJson" />
		<s:hidden id="tantaJson" name="tantaJson" />
		<s:textfield id="chenjiangIndex" />
		<s:hidden id="kailieIndex" />
		<s:hidden id="waiyiIndex" />
		<s:hidden id="tantaIndex" />
		 <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="40" align="center" class="GridTitle">
                挡墙护坡数据详细&编辑
            </td>
        </tr>
    </table>

    <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border" align="center">
    <tr>                   
    <td align="center">                         
        <table style="width: 98%;" cellspacing="0" cellpadding="5" border="1" class="tableFrom" >
            <tr>
                <td height="25" width="20%" align="right">
		            选件表名：
	            </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="#task.name" readonly="readonly" style="color:Red;" /><font color="gold">(不可修改)</font>
                </td>
                <td height="25" width="20%" align="right">
                    巡检时间：
                </td>
                <td height="25" width="30%" align="left">
                    <input name="dateTime"  type="text" value="${date} &nbsp ${time}"onfocus="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})" />
                </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    位置：
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;"> 
                   <s:textfield name="position" style="position:absolute;left:-2px; top: 0px; right: 243px;"/> 
               </div>
                </td>
                <td height="25" width="20%" align="right">
                    &nbsp;</td>
                <td height="25" width="30%" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    沉降：
                </td>
                <td height="25" width="30%" align="left">
                   <s:textfield name="chenjiangDes" style="position:absolute;left:-2px; top: 0px; right: 243px;"/> 
                </td>
                <td height="25" width="20%" align="right">
                    沉降等级：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="chenjiang_level" />
                </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    墙体开裂： 
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;"> 
                   <s:textfield name="kailieDes" style="position:absolute;left:-2px; top: 0px; right: 243px;" />
               </div>
                </td>
                 <td height="25" width="20%" align="right">
                     墙体开裂等级：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="kailie_level" />
                </td>
           </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    填土有外溢： 
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;"> 
                   <s:textfield name="waiyiDes" style="position:absolute;left:-2px; top: 0px; right: 243px;" /> 
               </div>
                </td>
                <td height="25" width="20%" align="right">
                    填土有外溢等级：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="waiyi_level"/>
                </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    坍塌： 
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;"> 
                   <s:textfield name="tantaDes" style="position:absolute;left:-2px; top: 0px; right: 212px;"/> 
               </div>
                </td>
                <td height="25" width="20%" align="right">
                    坍塌等级：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="tanta_level"/>
                </td>
            </tr>
            <tr>
                <td width="20%" align="right">
                    照片：
                 </td>
                <td width="30%" colspan="3" align="center">
                    <table style="width: 98%;" cellspacing="0" cellpadding="5" border="1" class="tableFrom" >
                        <tr>
                            <td align="center">沉降</td>
                            <td align="center">墙体开裂</td>
                            <td align="center">填土有外溢</td>
                            <td align="center">坍塌</td>
                            
                        </tr>
									<tr>
										<td align="center">
										<s:select 
												id="ddl_chenjiang"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'chenjiang_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="chenjiangDiv">
												<a href="#" id="chenjiang_a1" rel="chenjiang_group" title="照片1"><img
													src="" id="chenjiang_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="chenjiang_a2"
													rel="chenjiang_group" title="照片2"><img src=""
													id="chenjiang_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="chenjiang_a3"
													rel="chenjiang_group" title="照片3"><img src=""
													id="chenjiang_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="chenjiang_a4"
													rel="chenjiang_group" title="照片4"><img src=""
													id="chenjiang_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="chenjiang_a5"
													rel="chenjiang_group" title="照片5"><img src=""
													id="chenjiang_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="chenjiang_a6"
													rel="chenjiang_group" title="照片6"><img src=""
													id="chenjiang_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'chenjiang','ddl_chenjiang')"
												cssClass="InputText" /></td>

										<td align="center"><s:select name="ddl_kailie"
											id="ddl_kailie"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
											listKey="key" listValue="value"
											onchange="changeDisplay(this.selectedIndex,'kailie_img');"
											cssClass="InputText">
										</s:select> <br />
											<div id="kailieDiv">
												<a href="#" id="kailie_a1" rel="kailie_group"
													title="照片1"><img src="" id="kailie_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="kailie_a2" rel="kailie_group"
													title="照片2"><img src="" id="kailie_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="kailie_a3" rel="kailie_group"
													title="照片3"><img src="" id="kailie_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="kailie_a4" rel="kailie_group"
													title="照片4"><img src="" id="kailie_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="kailie_a5" rel="kailie_group"
													title="照片5"><img src="" id="kailie_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="kailie_a6" rel="kailie_group"
													title="照片6"><img src="" id="kailie_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'kailie','ddl_kailie')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_waiyi"
											id="ddl_waiyi"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
											listKey="key" listValue="value"
											onchange="changeDisplay(this.selectedIndex,'waiyi_img');"
											cssClass="InputText">
										</s:select> <br /> <div id="waiyiDiv">
												<a href="#" id="waiyi_a1" rel="waiyi_group"
													title="照片1"><img src="" id="waiyi_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="waiyi_a2" rel="waiyi_group"
													title="照片2"><img src="" id="waiyi_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="waiyi_a3" rel="waiyi_group"
													title="照片3"><img src="" id="waiyi_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="waiyi_a4" rel="waiyi_group"
													title="照片4"><img src="" id="waiyi_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="waiyi_a5" rel="waiyi_group"
													title="照片5"><img src="" id="waiyi_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="waiyi_a6" rel="waiyi_group"
													title="照片6"><img src="" id="waiyi_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'waiyi','ddl_waiyi')"
												cssClass="InputText" /></td>
										<td align="center"><s:select name="ddl_tanta" id="ddl_tanta"
											onchange="changeDisplay(this.selectedIndex,'tanta_img');"
											list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
											cssClass="InputText">

										</s:select> <br /> <div id="tantaDiv">
												<a href="#" id="tanta_a1" rel="tanta_group"
													title="照片1"><img src="" id="tanta_img1"
													width="200" height="150" style="display: inline" /></a> <a
													href="#" id="tanta_a2" rel="tanta_group"
													title="照片2"><img src="" id="tanta_img2"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="tanta_a3" rel="tanta_group"
													title="照片3"><img src="" id="tanta_img3"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="tanta_a4" rel="tanta_group"
													title="照片4"><img src="" id="tanta_img4"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="tanta_a5" rel="tanta_group"
													title="照片5"><img src="" id="tanta_img5"
													width="200" height="150" style="display: none" /></a> <a
													href="#" id="tanta_a6" rel="tanta_group"
													title="照片6"><img src="" id="tanta_img6"
													width="200" height="150" style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'tanta','ddl_tanta')"
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