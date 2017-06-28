
<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@include file="../../conn.jsp"%>

<%

int intpagesize; //一页显示的记录数
int introwcount; //记录总数
int intpagecount; //总页数
int intpage; //待显示页码
String strpage;
int i;
//设置一页显示的记录数
intpagesize = 50;
//取得待显示页码
strpage = request.getParameter("page");
if(strpage==null){//表明在querystring中没有page这一个参数，此时显示第一页数据
intpage = 1;
}
else{//将字符串转换成整型
intpage = Integer.parseInt(strpage);
if(intpage<1) intpage = 1;
}
//装载jdbc驱动程序


  ResultSet sqlrst;

String strSQL="select * from software";
sqlrst=stmt.executeQuery(strSQL);

sqlrst.last();
introwcount = sqlrst.getRow();
//记算总页数
intpagecount = (introwcount+intpagesize-1) / intpagesize;
//调整待显示的页码
if(intpage>intpagecount) intpage = intpagecount;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>软件表正在操作中.......</title>
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
	background-image: url(../../../image/group362.gif);
	background-repeat: repeat-x;
}
.hg {
	height: 54px;
	width: 971px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: dashed;
	border-right-color: #7F9DB9;
	border-bottom-color: #7F9DB9;
	font-size: 12px;
	color: #7996DE;
}
.ff {
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #42A342;
	border-bottom-color: #42A342;
}
.STYLE1 {
	font-size: 24px;
	color: #1749A0;
}
.STYLE2 {font-family: "新宋体"}
-->
</style>
</head>
<body>
<p>&nbsp;</p>
<p class="STYLE1">文<span class="STYLE2">件管理中心!</span></p>
<table width="971" height="67" cellpadding="0" cellspacing="0" bgcolor="#EDFBFE" class="hg">
<tr>
<th class="ff" width="191" height="26">文件名称</th>
<th class="ff" width="87">软件类型</th>
<th class="ff" width="66">文件类型</th>
<th class="ff" width="67">文件大小</th>
<th class="ff" width="55">添加时间</th>
<th class="ff" width="393">URL</th>
<th class="ff" colspan="2">操作</th>
</tr>
<%
if(intpagecount>0){
//将记录指针定位到待显示页的第一条记录上
sqlrst.absolute((intpage-1) * intpagesize + 1);
//显示数据
i = 0;
while(i<intpagesize){
%>
<tr>
<td height="39" class="ff"><%int row=sqlrst.getInt(1);%><%=sqlrst.getString(2)%></td>
<td class="ff"><%=sqlrst.getString(3)%></td>
<td class="ff" width="66"><%=sqlrst.getString(4)%></td>
<td class="ff" width="67"><%=sqlrst.getString(5)%></td>
<td class="ff" width="55"><%=sqlrst.getString(6)%></td>
<td class="ff" width="393"><%=sqlrst.getString(8)%></td>
<td class="d" width="53"><a href="softdel.jsp?id=<%=row%>" >删除</a></td>

<td class="d" width="57"><a href="softupdate.jsp?id=<%=row%>" target="_blank">修改</a></td>
</tr>
<%if(
sqlrst.next()){
i++;}else{break;}
}
}
%>
</table>
<p>第<%=intpage%>页&nbsp;&nbsp;<a href="softquery.jsp?page=<%=intpagecount%>">最后一页</a>&nbsp;&nbsp;共<%=intpagecount%>页
  <%if(intpage<intpagecount){%>
  <a href="softquery.jsp?page=<%=intpage+1%>">下一页</a>
  <%}%>
  <%if(intpage>1){%>
  <a 
href="softquery.jsp?page=<%=intpage-1%>">上一页</a>
  <%}%>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
<%
//rs.close();
 stmt.close();
 con.close();
}
catch(SQLException es)
{
    out.println(es.toString());
}
 %>