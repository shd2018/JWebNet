<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@include file="../../DataBase/conn.jsp"%>
<%
 String namew=request.getParameter("User");
  String oldpass=request.getParameter("oldPass");
  String newpass=request.getParameter("newPass");
  
   String question=request.getParameter("questionid");
String da=request.getParameter("da");

   
  
//java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
//String a= dateFormat.format(new java.util.Date(System.currentTimeMillis()));

String strSQL="UPDATE login SET pass='"+newpass+"'"+" WHERE name='"+namew+"' and question='"+question+"' and answer='"+da+"'";

rs=stmt.executeQuery("Select * FROM login where name='"+namew+"' and pass='"+oldpass+"'");
if(rs.next())
{stmt.executeUpdate(strSQL);
out.println("��������ɹ�!  "+"�����Ʊ��ܣ�");
%><a href="../../index.jsp">���ذ���100��ҳ</a><%



}
else
{
out.println("��������ʧ��!");
}



 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����100�û������޸�ҳ</title>
<meta name="keywords" content="����100�û������޸�">
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style></head>

<body>


 
</body>
</html>
<%
// rs.close();
 stmt.close();
 con.close();
}
catch(SQLException e)
{
    out.println(e.toString());
}%>