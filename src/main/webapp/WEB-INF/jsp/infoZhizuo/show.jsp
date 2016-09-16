<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/common.jspf"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.fancybox.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.fancybox.css"
	type="text/css" media="screen" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.fancybox.pack.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/show.js"></script>
<script type="text/javascript">
	var luoshuanJson;
	var weiyiJson;
	var xiushiJson;
	var songdongJson;
	var fangzhenkuaiJson;
	var luoshuanImg;
	var weiyiImg;
	var xiushiImg;
	var songdongImg;
	var fangzhenkuaiImg;
	var newName=new Array();
	$(function(){
		if(!($("#luoshuanJson").val())){
			$("#luoshuanJson").val("{'id':0,'level':'0'}");
		}
		if(!($("#xiushiJson").val())){
			$("#xiushiJson").val("{'id':0,'level':'0'}");
		}
		if(!($("#weiyiJson").val())){
			$("#weiyiJson").val("{'id':0,'level':'0'}");
		}
		if(!($("#songdongJson").val())){
			$("#songdongJson").val("{'id':0,'level':'0'}");
		}
		if(!($("#fangzhenkuaiJson").val())){
			$("#fangzhenkuaiJson").val("{'id':0,'level':'0'}");
		}
		 luoshuanJson=eval('('+$("#luoshuanJson").val()+')');
  	  	 luoshuanImg=new Array(luoshuanJson.img1,luoshuanJson.img2,luoshuanJson.img3,luoshuanJson.img4,luoshuanJson.img5,luoshuanJson.img6);
  	  	 xiushiJson=eval('('+$("#xiushiJson").val()+')');
	  	 xiushiImg=new Array(xiushiJson.img1,xiushiJson.img2,xiushiJson.img3,xiushiJson.img4,xiushiJson.img5,xiushiJson.img6);
	  	 weiyiJson=eval('('+$("#weiyiJson").val()+')');
  	   	 weiyiImg=new Array(weiyiJson.img1,weiyiJson.img2,weiyiJson.img3,weiyiJson.img4,weiyiJson.img5,weiyiJson.img6);
  	  	 songdongJson=eval('('+$("#songdongJson").val()+')');
	   	 songdongImg=new Array(songdongJson.img1,songdongJson.img2,songdongJson.img3,songdongJson.img4,songdongJson.img5,songdongJson.img6);
	   	 fangzhenkuaiJson=eval('('+$("#fangzhenkuaiJson").val()+')');
  	  	 fangzhenkuaiImg=new Array(fangzhenkuaiJson.img1,fangzhenkuaiJson.img2,fangzhenkuaiJson.img3,fangzhenkuaiJson.img4,fangzhenkuaiJson.img5,fangzhenkuaiJson.img6);
  	   for(var i=0;i<6;i++) {
		    $("#luoshuan_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+luoshuanImg[i]);
	     	document.getElementById("luoshuan_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+luoshuanImg[i];
	     	 $("#weiyi_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+weiyiImg[i]);
 	     	document.getElementById("weiyi_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+weiyiImg[i];
 	     	 $("#xiushi_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+xiushiImg[i]);
 	     	document.getElementById("xiushi_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+xiushiImg[i];
 	     	 $("#songdong_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+songdongImg[i]);
 	     	document.getElementById("songdong_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+songdongImg[i];
 	     	 $("#fangzhenkuai_a"+(i+1)).attr("href","${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+fangzhenkuaiImg[i]);
 	     	document.getElementById("fangzhenkuai_img"+(i+1)).src="${pageContext.request.contextPath}/docs/长江二桥定期检查(${date})/"+fangzhenkuaiImg[i];
	   }
  	  	 $("a[rel=luoshuan_group]").fancybox({
             'cyclic': false
         });
         $("a[rel=weiyi_group]").fancybox({
             'cyclic': false
         });
         $("a[rel=xiushi_group]").fancybox({
             'cyclic': false
         });
         $("a[rel=songdong_group]").fancybox({
             'cyclic': false
         });
         $("a[rel=fangzhenkuai_group]").fancybox({
             'cyclic': false
         });
	}); 
	/* function toList(){
		$("#form1").attr("action","task_show.action?id=${task.id}");//一直报错.
		$("#form1").submit();//not available
	} */
    </script> 
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
    </style>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <s:form method="post" action="infoZhizuo_%{time== null ? 'add' : 'edit'}?taskId=%{#task.id}" id="form1" enctype="multipart/form-data">
    <s:hidden name="id"/>
    <s:hidden  id="luoshuanJson" name="luoshuanJson" /> 
     <s:hidden  id="weiyiJson" name="weiyiJson" />
      <s:hidden  id="xiushiJson" name="xiushiJson" />
       <s:hidden  id="songdongJson" name="songdongJson" />
       <s:hidden  id="fangzhenkuaiJson" name="fangzhenkuaiJson"/>
       <s:hidden  id="luoshuanIndex" />
     <s:hidden  id="weiyiIndex" />
      <s:hidden  id="xiushiIndex" />
       <s:hidden  id="songdongIndex" />
       <s:hidden  id="fangzhenkuaiIndex"/>
       <s:textfield id="newName" name="newName"/>
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="40" align="center" class="GridTitle">
                支座数据编辑
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
                    <s:textfield name="#task.name"  readonly="readonly" style="color:Red;" /><font color="gold">(不可修改)</font>
                </td>
                <td height="25" width="20%" align="right">
                    巡检时间：
                </td>
                <td height="25" width="30%" align="left">
                     <input name="dateTime" type="text" value="${date} ${time}" id="txtDatetime" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
                </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    墩台号：
                </td>
                <td height="25" width="30%" align="left">
                <div style="position:relative;"> 
                   <s:textfield name="position" style="position:absolute;left:-2px; top: 0px; right: 243px;"/> 
               </div>
                </td>
                <td height="25" width="20%" align="right">
                    类型：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="no"  />
                </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    螺栓：
                </td>
                <td height="25" width="30%" align="left">
                <div style="position:relative;">
                   <s:textfield name="luoshuanDes"  id="inputLuoshuan" style="position:absolute;left:-2px; top: 0px; right: 243px;" /> 
                        </div>
                </td>
                <td height="25" width="20%" align="right">
                    螺栓等级：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="luoshuan_level"   />
                </td>
            </tr>
            <tr>
                <td width="20%" align="right" class="style1">
                    位移：
                </td>
                <td width="30%" align="left" class="style1">
                    <div style="position:relative;">                  
                   <s:textfield name="weiyiDes" style="position:absolute;left:-2px; top: 0px; right: 243px;"/> 
                        </div>
                </td>
                 <td width="20%" align="right" class="style1">
                    位移等级：
                </td>
                <td width="30%" align="left" class="style1">
                    <s:textfield name="weiyi_level"  />
                </td>
           </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    锈蚀：
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;">
                   <s:textfield name="xiushiDes" style="position:absolute;left:-2px; top: 0px; right: 243px;"/> 
                        </div>
                </td>
                <td height="25" width="20%" align="right">
                    锈蚀等级：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="xiushi_level"  />
                </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    松动：
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;">             
                   <s:textfield name="songdongDes" style="position:absolute;left:-2px; top: 0px; right: 243px;" /> 
                        </div>
                </td>
                <td height="25" width="20%" align="right">
                    松动等级：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="songdong_level" type="text" value="1" id="txtsongdong_level" />
                </td>
            </tr>
            <tr>
                <td height="25" width="20%" align="right">
                    防震块：
                </td>
                <td height="25" width="30%" align="left">
                    <div style="position:relative;">      
                   <s:textfield name="fangzhenkuaiDes" style="position:absolute;left:-2px; top: 0px; right: 243px;" /> 
                        </div>
                </td>
                <td height="25" width="20%" align="right">
                    防震块等级：
                </td>
                <td height="25" width="30%" align="left">
                    <s:textfield name="fangzhenkuai_level" />
                </td>
            </tr>
            <tr>
                <td width="20%" align="right">
                    其它：
                </td>
                <td colspan="3" align="left">
                    <s:textfield name="other"/>
                </td>
            </tr>
            <tr>
                <td width="20%" align="right">
                    照片：
                </td>
                <td width="30%" colspan="3" align="center">
                    <table style="width: 98%;" cellspacing="0" cellpadding="5" border="1" class="tableFrom" >
                        <tr>
                            <td align="center">螺栓</td>
                            <td align="center">位移</td>
                            <td align="center">锈蚀</td>
                            <td align="center">松动</td>
                            <td align="center">防震块</td>
                        </tr>
                     <tr>                          

                            <td align="center">
										<s:select 
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
                            <td align="center">
                               			<s:select 
												id="ddl_weiyi"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'weiyi_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="weiyiDiv">
												<a href="#" id="weiyi_a1" rel="weiyi_group" title="照片1"><img
													src="" id="weiyi_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="weiyi_a2"
													rel="weiyi_group" title="照片2"><img src=""
													id="weiyi_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="weiyi_a3"
													rel="weiyi_group" title="照片3"><img src=""
													id="weiyi_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="weiyi_a4"
													rel="weiyi_group" title="照片4"><img src=""
													id="weiyi_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="weiyi_a5"
													rel="weiyi_group" title="照片5"><img src=""
													id="weiyi_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="weiyi_a6"
													rel="weiyi_group" title="照片6"><img src=""
													id="weiyi_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'weiyi','ddl_weiyi')"
												cssClass="InputText" />
                            </td>
                            <td align="center">
                               			<s:select 
												id="ddl_xiushi"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'xiushi_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="xiushiDiv">
												<a href="#" id="xiushi_a1" rel="xiushi_group" title="照片1"><img
													src="" id="xiushi_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="xiushi_a2"
													rel="xiushi_group" title="照片2"><img src=""
													id="xiushi_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="xiushi_a3"
													rel="xiushi_group" title="照片3"><img src=""
													id="xiushi_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="xiushi_a4"
													rel="xiushi_group" title="照片4"><img src=""
													id="xiushi_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="xiushi_a5"
													rel="xiushi_group" title="照片5"><img src=""
													id="xiushi_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="xiushi_a6"
													rel="xiushi_group" title="照片6"><img src=""
													id="xiushi_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'xiushi','ddl_xiushi')"
												cssClass="InputText" />
                            </td>
                            <td align="center">
                             			<s:select 
												id="ddl_songdong"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'songdong_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="songdongDiv">
												<a href="#" id="songdong_a1" rel="songdong_group" title="照片1"><img
													src="" id="songdong_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="songdong_a2"
													rel="songdong_group" title="照片2"><img src=""
													id="songdong_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="songdong_a3"
													rel="songdong_group" title="照片3"><img src=""
													id="songdong_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="songdong_a4"
													rel="songdong_group" title="照片4"><img src=""
													id="songdong_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="songdong_a5"
													rel="songdong_group" title="照片5"><img src=""
													id="songdong_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="songdong_a6"
													rel="songdong_group" title="照片6"><img src=""
													id="songdong_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'songdong','ddl_songdong')"
												cssClass="InputText" />
                            </td>
                            <td align="center">
                                			<s:select 
												id="ddl_fangzhenkuai"
												list="#{1:'照片1',2:'照片2',3:'照片3',4:'照片4',5:'照片5',6:'照片6'}"
												listKey="key" listValue="value"
												onchange="changeDisplay(this.selectedIndex,'fangzhenkuai_img');"
												cssClass="InputText">
											</s:select> <br />
											<div id="fangzhenkuaiDiv">
												<a href="#" id="fangzhenkuai_a1" rel="fangzhenkuai_group" title="照片1"><img
													src="" id="fangzhenkuai_img1" width="200" height="150"
													style="display: inline" /></a> <a href="#" id="fangzhenkuai_a2"
													rel="fangzhenkuai_group" title="照片2"><img src=""
													id="fangzhenkuai_img2" width="200" height="150"
													style="display: none" /></a> <a href="#" id="fangzhenkuai_a3"
													rel="fangzhenkuai_group" title="照片3"><img src=""
													id="fangzhenkuai_img3" width="200" height="150"
													style="display: none" /></a> <a href="#" id="fangzhenkuai_a4"
													rel="fangzhenkuai_group" title="照片4"><img src=""
													id="fangzhenkuai_img4" width="200" height="150"
													style="display: none" /></a> <a href="#" id="fangzhenkuai_a5"
													rel="fangzhenkuai_group" title="照片5"><img src=""
													id="fangzhenkuai_img5" width="200" height="150"
													style="display: none" /></a> <a href="#" id="fangzhenkuai_a6"
													rel="fangzhenkuai_group" title="照片6"><img src=""
													id="fangzhenkuai_img6" width="200" height="150"
													style="display: none" /></a>
											</div> <br /> <s:file name="image" label="选择文件"
												onchange="preImg(this.id,'fangzhenkuai','ddl_fangzhenkuai')"
												cssClass="InputText" />
                            </td>
                        
                        </tr> 
                    </table>
                </td>
            </tr>
       </table>
    <br />
        <div>
            <input type="submit" name="btnSave" value="保存" id="btnSave" class="Button" />
            &nbsp;&nbsp;&nbsp;&nbsp;
        <!--  <input type="button" name="btnBack" value="返回" id="btnBack" class="Button" onclick="toList()"/> -->
        </div>
    </td>
    </tr>
   </table>
    </s:form>
</body>
</html>