<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"  %>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>

<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;

String username=request.getParameter("user");
rs=stmt.executeQuery("SELECT * from teacher where gonghao='"+username+"'");
if(!rs.next())
{%><title>用户检测窗口</title>
<p align="center">
<font color="#800000">恭喜您！此帐号现无人使用，请继续注册。 <br>
</font>
<br>
<a href="javascript:window.close()">关闭窗口</a></p>
<%}
else
{%>
<p align="center">对不起！此帐号已被人注册，请您另选帐号<br><br><a href="javascript:window.close()">关闭窗口</a></p>
<a href='user.jsp?user=<%=username%>' target='_blank'>查看该老师信息</a></p>
<%}
 
 %>