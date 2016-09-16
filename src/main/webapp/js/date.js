
now=new Date();
hour = now.getHours();
if(hour<6){document.write("凌晨好! ")}
else if (hour<11){document.write("上午好! ")} 
else if (hour<13){document.write("中午好! ")} 
else if (hour<18){document.write("下午好! ")} 
else if (hour<24){document.write("晚上好! ")}

document.write("今天是: ")

today=new Date();
function initArray(){
this.length=initArray.arguments.length
for(var i=0;i<this.length;i++)
this[i+1]=initArray.arguments[i]  }
var d=new initArray("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
document.write(today.getFullYear(),"  年 ",today.getMonth()+1," 月 ",today.getDate()," 日 ",d[today.getDay()+1] );
