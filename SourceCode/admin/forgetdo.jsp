<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
	background-image: url(../../image/top1.gif);
	background-repeat: repeat-x;
}
-->
</style><title>����100��Աע���ύ</title>
<p>&nbsp;</p>
<p>&nbsp;</p>

<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@include file="../../DataBase/conn.jsp"%>
<%
 String name1=request.getParameter("Username");
   name1=new String(name1.getBytes("ISO-8859-1"),"GBK");
 
  String email1=request.getParameter("Email");
  
   String questionid=request.getParameter("questionid");
   questionid=new String(questionid.getBytes("ISO-8859-1"),"GBK");
   
   String da=request.getParameter("da");
   da=new String(da.getBytes("ISO-8859-1"),"GBK");
 



rs=stmt.executeQuery("select * from login where name='"+name1+"' and question='"+questionid+"' and answer='"+da+"'");

if(rs.next())
{


out.println("�һسɹ�!");
out.println("�û�����   "+name1+"   ���� :  "+rs.getString(3));
}
else
{
out.println("����������!�����԰�ȫ�ش�����,��Email����,�� * �ŵı��");
}



// rs.close();
 stmt.close();
 con.close();
}
catch(SQLException e)
{
    out.println(e.toString());
}

 %>

