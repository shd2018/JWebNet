<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"  %>
<%@ include file="/DataBase/conn.jsp"%>
<%

String username=request.getParameter("user");
rs=stmt.executeQuery("SELECT * from login where name='"+username+"'");
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
<p align="center">对不起！此帐号已被人注册，请您另选帐号<br><br>
<a href='/bbs/board/reply/guest.jsp?user1=<%=username%>' target='_blank'></a></p>
<%}
 stmt.close();
 con.close();
}
catch(SQLException e)
{
    out.println(e.toString());
}
catch(java.lang.NullPointerException De)
{
    out.println(De.toString());
}
 %>