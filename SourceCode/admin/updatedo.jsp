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
out.println("更改密码成功!  "+"请妥善保管！");
%><a href="../../index.jsp">返回爱问100主页</a><%



}
else
{
out.println("更改密码失败!");
}



 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>爱问100用户密码修改页</title>
<meta name="keywords" content="爱问100用户密码修改">
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