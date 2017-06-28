<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>

<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;

String gonghao=request.getParameter("gonghao");
String pass=request.getParameter("pass");
 
 String strSQL="select * from teacher where gonghao='"+gonghao+"'"+"and pass='"+pass+"'";
rs=stmt.executeQuery(strSQL);

if(rs.next())
{
session.setAttribute("gonghao",gonghao);

session.setAttribute("name",rs.getString(4));
session.setAttribute("sex",rs.getString(5));
session.setAttribute("birthday",rs.getString(6));
session.setAttribute("xuewei",rs.getString(7));
session.setAttribute("zhicheng",rs.getString(8));
session.setAttribute("teshu",rs.getString(9));
session.setAttribute("email",rs.getString(10));
session.setAttribute("tel",rs.getString(11));
session.setAttribute("shouji",rs.getString(12));
session.setAttribute("jianli",rs.getString(13));
session.setAttribute("photo",rs.getString(14));      
java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
String time= dateFormat.format(new java.util.Date(System.currentTimeMillis()));
	   
	session.setAttribute("logintime",time);//登陆时间   

 out.println("登陆成功！1秒钟将进入管理系统！");
 out.print("<script language='javascript'>opener.location=opener.location;</script>");
response.setHeader("refresh","1;URL=admin.jsp") ;
//response.sendRedirect("index.jsp");

}
else
{
out.println("登陆失败！请重新登陆！");
out.print("<script language='javascript'>opener.location=opener.location;</script>");

String ss="<a href='/'>重新登陆</a>";
out.println(ss);

String s="<a href="+"teacherreg.jsp"+">注册</a>";
out.println(s);

}
//Cookie cookie1=new Cookie("name1", name1);cookie1.setMaxAge(10); cookie1.setPath("/"); response.addCookie(cookie1); 
 
 

 %>
</p>
