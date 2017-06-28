<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>

<%
  String pass=request.getParameter("pass");
  Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;

String admin=(String)session.getAttribute("name");
 
//java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
//String a= dateFormat.format(new java.util.Date(System.currentTimeMillis()));

String strSQL="UPDATE admin SET adminpwd='"+pass+"'"+" WHERE admin='"+admin+"'";

rs=stmt.executeQuery("Select * FROM admin where admin='"+admin+"'");
if(rs.next())
{stmt.executeUpdate(strSQL);
out.println("更改密码成功!  "+"请妥善保管！");
response.setHeader("refresh","1;URL=/") ;


}
else
{
out.println("更改密码失败!");

 
}%>