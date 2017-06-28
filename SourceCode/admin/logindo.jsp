<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*" errorPage=""%>
<jsp:useBean id="loginMD5" scope="page" class="com.guestbook.MD5" />

<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
	background-image: url(../image/bizhi11.jpg);
	background-repeat: repeat-x;
}
.STYLE50 {color: #FFFFFF}
a:link {
	text-decoration: none;
}
.STYLE56 {color: #CC00CC}
.STYLE59 {color: #CCCCCC}
.STYLE59 {color: #333333; }
.tableguid {width: 945px;
	font-size: 12px;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
#Layer4 {position:absolute;
	width:325px;
	height:22px;
	z-index:1;
	left: 618px;
	top: 27px;
	visibility: visible;
}
body,td,th {
	font-size: 12px;
}
.STYLE62 {font-size: 18px}
.STYLE52 {color: #FFFFFF; font-size: 14px; }
.STYLE63 {font-size: 16px}
.STYLE82 {color: #FF8700}
.gg {background-color: #f5fdff;
	height: 20px;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: solid;
	border-left-style: none;
	border-top-color: #cae8ff;
	border-right-color: #cae8ff;
	border-bottom-color: #cae8ff;
	border-left-color: #cae8ff;
}
.sele {width: 75px;
	border: 1px solid #cae8ff;
	font-size: 12px;
	font-family: "宋体";
}
.sou {width: 300px;
	border: 1px solid #B9CFFB;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-position: left center;
	height: 20px;
}
#apDiv1 {position:absolute;
	width:257px;
	height:15px;
	z-index:7;
	left: 267px;
	top: 4px;
}
-->
</style><title>用户登陆提交页</title>


  <%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"%>
  <%@ page import="java.io.*"%>
  <%@include file="../../DataBase/conn.jsp"%>
 <%

String name1=request.getParameter("UserNm");
String pwda=request.getParameter("UserPasswd");//用MD5加密
  pwda=loginMD5.getMD5ofStr(pwda);//用MD5加密
  String   rand   =   (String)session.getAttribute("rand");   
    String   input   =   request.getParameter("rand");   
String strSQL="select * from login where name='"+name1+"'"+"and pass='"+pwda+"'";
rs=stmt.executeQuery(strSQL);

if(rs.next()&&rand.equals(input))
{
session.setAttribute("user",name1);
String n1=rs.getString(20);
session.setAttribute("nich",n1);
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
       java.util.Date currentTime = new java.util.Date(); 
       //String date = formatter.format(currentTime); 
         //year = date.substring(0,4); 
         //month = date.substring(5,7); 
       //day = date.substring(8,10); 
       // String shi=   date.substring(11,13); 
		//String fen=   date.substring(14,16); 
         
         //int hour = Integer.parseInt(shi); out.print(hour);
//session.setAttribute("tou",tou);
%>
   <span class="STYLE62">登陆成功!</span>
  <%String update="update login set online=online+1 where name='bumie2008'";
stmt.executeUpdate(update);out.print("<script language='javascript'>opener.location=opener.location;</script>");%> 
  <a href="javascript:window.close()" class="STYLE62">关闭</a>
  
  <a href="/bbs/index.jsp" class="STYLE62">进入论坛！</a>
  <a href="../../index.jsp" class="STYLE62">返回主页</a>
  <%
//response.setHeader("refresh","2;URL=../index.jsp") ;
//response.sendRedirect("index.jsp");

}
else
{
out.println("登陆失败！请重新登陆！");
out.print("<script language='javascript'>opener.location=opener.location;</script>");

String ss="<a href='login.jsp'>重新登陆</a>";
out.println(ss);

String s="<a href="+"agree.html"+">注册</a>";
out.println(s);

}
//Cookie cookie1=new Cookie("name1", name1);cookie1.setMaxAge(10); cookie1.setPath("/"); response.addCookie(cookie1); 
 
 stmt.close();
 con.close();
}
catch(SQLException e)
{
    out.println(e.toString());
}

 %>
</p>
