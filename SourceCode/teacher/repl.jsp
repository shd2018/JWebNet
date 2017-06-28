<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>
<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;
String id=request.getParameter("id");
String answer=request.getParameter("answer");
answer=new String(answer.getBytes("ISO-8859-1"),"gb2312");
String at=(String)session.getAttribute("gonghao");

rs=stmt.executeQuery("select * from question where id='"+id+"' and awser='无'");
if(rs.next())
{
stmt.executeUpdate("update question set awser='"+answer+"',answerteacher='"+at+"' where id='"+id+"'");


out.print("回复成功！");

}

else
{
out.print("回复失败，可能有老师回答了该问题！");


}
%>
