<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%><jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>

<%
  String pass=request.getParameter("xuehao");
  Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;

String xuehao=(String)session.getAttribute("xuehao");
 
//java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
//String a= dateFormat.format(new java.util.Date(System.currentTimeMillis()));

String strSQL="UPDATE class SET pass='"+pass+"'"+" WHERE xuehao='"+xuehao+"'";

rs=stmt.executeQuery("Select * FROM class where xuehao='"+xuehao+"'");
if(rs.next())
{stmt.executeUpdate(strSQL);
out.println("更改密码成功!  "+"请妥善保管！");
response.setHeader("refresh","1;URL=class/main.jsp") ;


}
else
{
out.println("更改密码失败!");

 
}%>