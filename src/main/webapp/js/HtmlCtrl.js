//document.oncontextmenu=new Function('event.returnValue=false;');
//document.onselectstart=new Function('event.returnValue=false;');    

function jsArrayCtrl(jsCtrlName,jsCtrlType)
{
	var ctrls = document.getElementsByTagName(jsCtrlName);
	var ctrlArray = [];
	for(var i=0;i<ctrls.length;i++)
	{ 
		var obj = ctrls[i];
		if(obj.name==jsCtrlType)
		{
			  ctrlArray.push(obj); 
		}
	}

	return ctrlArray;
}


function jsArrayDiv(jsCtrlName,jsCtrlType)
{
	var ctrls = document.getElementsByTagName(jsCtrlName);
	var ctrlArray = [];
	for(var i=0;i<ctrls.length;i++)
	{ 
		var obj = ctrls[i];
		if(obj.id.substring(0,10)==jsCtrlType)
		{
			  ctrlArray.push(obj); 
		}
	}

	return ctrlArray;
}


function jsGetRadioSelected(RadioName)
{
    var tempSel=document.getElementsByName(RadioName);
    for (i=0;i<tempSel.length;i++)
    {
        if(tempSel[i].checked)
          {
            return tempSel[i].value;
          }
    }
}   


function GetQueryString(name) 
{

    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i");

    var r = window.location.search.substr(1).match(reg);

    if (r!=null) return unescape(r[2]); return null;

}