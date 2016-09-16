		function changeDisplay(index, id) {
           for (i = 0; i < 6; i++) {
               if (document.getElementById(id + (i + 1)).style.display == "inline") {
                   document.getElementById(id + (i + 1)).style.display = "none";
               }
           }
           document.getElementById(id + (index + 1)).style.display = "inline";
       }
       function preImg(sourceId, target, ddl) {
           var url = getFileUrl(sourceId);
           var index = document.getElementById(ddl).selectedIndex;
           var imgPre = document.getElementById(target+"_img" + (index + 1));
           imgPre.src = url;
		   var i=$("#"+target+"Index").val();
		   var imageName=eval(target+"Img"+"["+index+"]");//可以先判断imageName有没有值，取好名字。
		   /* typeof 返回的是字符串,有六种可能:"number" "String" "boolean" "object" "function" "undefined" */
		    if(!imageName||typeof(imageName)=="undefined"){     //imageName为空，修改Json再修改newName,不为空则修改newName即可。
		        	   var myDate=new Date();
		        	   imageName=myDate.getHours()+"_"+myDate.getMinutes()+"_"+myDate.getSeconds()+".png";
		               changeJson(index,target,imageName);
		           }
		           if(i){
		        	 newName[i]=imageName;//index
		           }else{//如果是空,则需要修改json
		        	  newName.push(imageName);
		              $("#"+target+"Index").val(newName.length-1);
		           }
		           $("#newName").val(newName);
       }
       function simplePreImg(sourceId,flag,index){//index为数字，是第几张图片。target为imgPre1,例如flag为info名，如gangxiangliang或gangxiangliang
    		  var url = getFileUrl(sourceId);
    		  document.getElementById("imgPre"+index).src=url;//显示本地图片。
    		  var i=$("#imgPre"+index+"Index").val();
    		  var imageName=eval(flag+"Img"+"["+(index-1)+"]");	
    	 	  if(!imageName||typeof(imageName)=="undefined"){  
    	 		  var myDate=new Date();
    		      imageName=myDate.getHours()+"_"+myDate.getMinutes()+"_"+myDate.getSeconds()+".png";
    	      	  changeJsons(index-1,flag,imageName);//改变同一个json中的多个值。
    		  }
    		  if(i){
    			  newName[i]=imageName;
    		  }else{
    			  newName.push(imageName)
    			  $("#imgPre"+index+"Index").val(newName.length-1);
    		  }
    		  $("#newName").val(newName);
    	}
           function changeJson(index,target,imageName){//index为select选中的索引,tartget如goujian，i为控制每个部件的newName的索引。
        	  var myJson="{'id':0";
          	 for(var j=1;j<7;j++){
          		 if(j==index+1) {myJson+=",'img"+j+"':'"+imageName+"'";continue}
                 var curImgName=eval(target+"Img"+"["+(j-1)+"]");
                 if(typeof(curImgName)=="undefined") continue;
                 myJson+=",'img"+j+"':"+"'"+curImgName+"'";
          	 }
          	 myJson+=",'level':'4'}";
          	 $("#"+target+"Json").val(myJson);   
           } 
           function changeJsons(index,target,imageName){
        	   initJson();//初始化Json以及img数组。每个页面中的initJson都不相同。
        	   var myJson="{'id':0";
            	 for(var j=1;j<7;j++){
            		 if(j==index+1) {myJson+=",'img"+j+"':'"+imageName+"'";continue}
                   var curImgName=eval(target+"Img"+"["+(j-1)+"]");
                   if(typeof(curImgName)=="undefined") continue;
                   myJson+=",'img"+j+"':"+"'"+curImgName+"'";
            	 }
            	 myJson+=",'level':'4'}";
            	 $("#"+target+"Json").val(myJson); 
           }
       /** 
        * 从 file 域获取 本地图片 url 
        */
        function getFileUrl(sourceId) {
            var url;
            if (navigator.userAgent.indexOf("MSIE") >= 1) { // IE 
                url = document.getElementById(sourceId).value;
            } else if (navigator.userAgent.indexOf("Firefox") > 0) { // Firefox 
                url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
            } else if (navigator.userAgent.indexOf("Chrome") > 0) { // Chrome 
                url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
            }
            return url;
        }