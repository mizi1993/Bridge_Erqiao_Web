function DataDownload(jsDataType)
{
    var jsHPoint = document.getElementById("hPoint").value;
    var jsBegin = document.getElementById("txtBegin").value;
    var jsEnd = document.getElementById("txtEnd").value;
//    alert(jsHPoint);
//    alert(jsBegin);
//    alert(jsEnd);
    var jsLinkStr = "../includes/DataDownload.aspx?Type="+jsDataType+"&Point="+jsHPoint+"&Begin="+jsBegin+"&End="+jsEnd+"&DataType="+jsGetRadioSelected('RadioGroupDate');
    parent.MUI.Test2Window('DataDownload','数据下载',jsLinkStr,700,300);
}