<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>

<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;

String admin=request.getParameter("admin");
String pass=request.getParameter("password");
 
 String strSQL="select * from admin where admin='"+admin+"'"+"and adminpwd='"+pass+"'";
rs=stmt.executeQuery(strSQL);

if(rs.next())
{
session.setAttribute("name",admin);
   session.setAttribute("gonghao",admin);
session.setAttribute("xuehao",admin);
session.setAttribute("photo",rs.getString(4));   
java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
String time= dateFormat.format(new java.util.Date(System.currentTimeMillis()));
	   
	session.setAttribute("logintime",time);//��½ʱ��   

 out.println("��½�ɹ���");
 out.print("<script language='javascript'>opener.location=opener.location;</script>");
response.setHeader("refresh","1;URL=/") ;
//response.sendRedirect("index.jsp");

}
else
{
out.println("��½ʧ�ܣ������µ�½��");
out.print("<script language='javascript'>opener.location=opener.location;</script>");

String ss="<a href='/'>���µ�½</a>";
out.println(ss);


}
 %>
