
now=new Date();
hour = now.getHours();
if(hour<6){document.write("�賿��! ")}
else if (hour<11){document.write("�����! ")} 
else if (hour<13){document.write("�����! ")} 
else if (hour<18){document.write("�����! ")} 
else if (hour<24){document.write("���Ϻ�! ")}

document.write("������: ")

today=new Date();
function initArray(){
this.length=initArray.arguments.length
for(var i=0;i<this.length;i++)
this[i+1]=initArray.arguments[i]  }
var d=new initArray("������","����һ","���ڶ�","������","������","������","������");
document.write(today.getFullYear(),"  �� ",today.getMonth()+1," �� ",today.getDate()," �� ",d[today.getDay()+1] );
