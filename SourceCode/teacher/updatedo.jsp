<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%><jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>

<%
  String newpass=request.getParameter("newPass");
  Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;

String gonghao=(String)session.getAttribute("gonghao");
 
//java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
//String a= dateFormat.format(new java.util.Date(System.currentTimeMillis()));

String strSQL="UPDATE teacher SET pass='"+newpass+"'"+" WHERE gonghao='"+gonghao+"'";

rs=stmt.executeQuery("Select * FROM teacher where gonghao='"+gonghao+"'");
if(rs.next())
{stmt.executeUpdate(strSQL);
out.println("更改密码成功!  "+"请妥善保管！");
response.setHeader("refresh","1;URL=admin/main.jsp") ;


}
else
{
out.println("更改密码失败!");

 
}%>