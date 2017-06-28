<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<jsp:useBean id="conn1" class="yang.conn.conn" scope="page"/>
<%

Connection conn=conn1.getConn();
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs;

int intpagesize; //一页显示的记录数
int introwcount; //记录总数
int intpagecount; //总页数
int intpage; //待显示页码
String strpage;
int i;
//设置一页显示的记录数
intpagesize =15;
//取得待显示页码
strpage = request.getParameter("page");
if(strpage==null){//表明在querystring中没有page这一个参数，此时显示第一页数据
intpage = 1;
}
else{//将字符串转换成整型
intpage = Integer.parseInt(strpage);
if(intpage<1) intpage = 1;
}

 
  
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>学生所有提问</title>

<style type="text/css">
<!--
.f {height: 20px;
	width: 100px;
}
.soft {
	border: 1px solid #ace1f1;
	color: #3274CA;
}
.k {
	border: 1px solid #FEB42D;
}
.fff {
	background-image: url(/images/B.jpg);
}
.leftinput {
	height: 12px;
	width: 88px;
}
.down {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-bottom-style: dashed;
	border-top-color: #B5C4E3;
	border-right-color: #B5C4E3;
	border-bottom-color: #B5C4E3;
	border-left-color: #B5C4E3;
}
a:link {
	text-decoration: none;
	color: #666666;
}
.t {
	border: 1px solid #B2C7E4;
}
.tt {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #B0C8E4;
	border-right-color: #B0C8E4;
	border-bottom-color: #B0C8E4;
	border-left-color: #B0C8E4;
}
.login {
	height: 15px;
	width: 130px;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #CDCDCD;
	border-right-color: #D4D0C8;
	border-bottom-color: #D4D0C8;
	border-left-color: #CDCDCD;
}
a:visited {
	text-decoration: none;
	color: #999999;
}
body,td,th {
	font-size: 12px;
}
#Layer1 {
	position:absolute;
	width:167px;
	height:28px;
	z-index:1;
	left: 787px;
	top: 40px;
}
.STYLE9 {color: #FFFFFF}
#Layer2 {
	position:absolute;
	width:171px;
	height:26px;
	z-index:1;
	left: 587px;
	top: 10px;
}
#Layer3 {
	position:absolute;
	width:277px;
	height:41px;
	z-index:2;
	left: 228px;
	top: 8px;
}
.dd {
	font-size: 12px;
	text-decoration: none;
	height: 30px;
	width: 609px;
	border: 1px none #E46F08;
	background-image: url(/images/guidtop.jpg);
	color: #E57819;
}
#Layer4 {
	position:absolute;
	width:200px;
	height:93px;
	z-index:3;
	left: 9px;
	top: -16px;
}
.dd1 {	font-size: 12px;
	text-decoration: none;
	height: 30px;
	width: 609px;
	border: 1px none #E46F08;
	background-image: url(../images/guidtop.jpg);
}
.down1 {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-bottom-style: dashed;
	border-top-color: #84C223;
	border-right-color: #84C223;
	border-bottom-color: #84C223;
	border-left-color: #84C223;
}
.down2 {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-bottom-style: dashed;
	border-top-color: #E67816;
	border-right-color: #E67816;
	border-bottom-color: #E67816;
	border-left-color: #E67816;
}
.su {	height: 15px;
	width: 300px;
	border: 1px solid #FFFFFF;
}
.STYLE27 {
	font-size: 18px;
	color: #CC3300;
}
.STYLE28 {
	color: #CC0000;
	font-size: 18px;
}
-->
</style>
</head>

<body><%String xuehao=(String)session.getAttribute("xuehao");%>
<table width="963" height="19" border="0">
           <tr>
             <td><span class="STYLE27">问题名称</span></td>
             <td><span class="STYLE28">提问时间</span></td>
             <td></td></tr> <%rs=stmt.executeQuery("select * from question where awser!=''");

rs.last();
introwcount = rs.getRow();

//记算总页数
intpagecount = (introwcount+intpagesize-1) / intpagesize;
//调整待显示的页码
if(intpage>intpagecount) intpage = intpagecount;
if(intpagecount>0){
//将记录指针定位到待显示页的第一条记录上
rs.absolute((intpage-1) * intpagesize + 1);
//显示数据
i = 0;
while(i<intpagesize){
%>
            <tr>
              <%int rowid=rs.getInt(1);String namee=rs.getString(3);int len=namee.length();if(len>40){namee=namee.substring(0,40);}%>
              <td width="313" height="32" class="o"><a href="#" ><span class="STYLE15"><%=namee%></span></a></td>
              <td width="180"><%=rs.getString(5)%></td>
              <td class="o"><a href="#"><span class="STYLE37">回答结果</span></a><%=rs.getString(6)%></td>
            </tr>
            <%if(rs.next()){
i++;}else{break;}
}
}
%>
            <tr>
              <td><span class="STYLE9">第<%=intpage%>页&nbsp;</span>&nbsp;<span class="STYLE9">共<%=intpagecount%>页</span>
                <%if(intpage<intpagecount){%>
                <a href="classquestion.jsp?page=<%=intpage+1%>">下一页</a>
                <%}%>
                <%if(intpage>1){%>
                <a 
href="classquestion.jsp?page=<%=intpage-1%>">上一页</a>
                <%}%></td>
              
              <td>&nbsp;</td><td width="456">&nbsp;</td>
            </tr>
          </table>
</body>
</html>
