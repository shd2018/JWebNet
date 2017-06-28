<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
  <%@ include file="conn.jsp"%>

<%

String admin=(String)session.getAttribute("name");
if("admin".equals(admin))
{

int id=Integer.parseInt(request.getParameter("id"));
Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
String del="delete from a where id="+id;
int ret=stmt.executeUpdate(del);
stmt.close();
con.close();
out.print("<script language='javascript'>alert('留言删除成功');opener.location=opener.location;window.close();</script>");}


else

{

out.print("<script language='javascript'>alert('非管理员');window.location.href='index.jsp';</script>");

}
%>