
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>

<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;


 String gonghao=request.getParameter("Username");
     //gonghao=gonghao.replaceAll
   String name=request.getParameter("name");
   name=new String(name.getBytes("ISO-8859-1"),"gb2312");
   
 
  String email=request.getParameter("Email");

rs=stmt.executeQuery("select * from class where xuehao='"+gonghao+"' and name='"+name+"' and email='"+email+"'");
//rs=stmt.executeQuery("select * from teacher where name='"+name+"' and gonghao='"+gonghao+"' and email='"+email+"'");

if(rs.next())
{


out.println("�һسɹ�!");
out.println("ѧ�ţ�   "+rs.getString(2)+"   ���� :  "+rs.getString(3)+"          <h1>�����Ʊ���</h1>");

}
else
{
out.println("����������!�����԰�ȫ�ش�����,��Email����,�� * �ŵı��");
}


 %>

