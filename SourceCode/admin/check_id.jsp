<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"  %>
<%@ include file="/DataBase/conn.jsp"%>
<%

String username=request.getParameter("user");
rs=stmt.executeQuery("SELECT * from login where name='"+username+"'");
if(!rs.next())
{%><title>�û���ⴰ��</title>
<p align="center">
<font color="#800000">��ϲ�������ʺ�������ʹ�ã������ע�ᡣ <br>
</font>
<br>
<a href="javascript:window.close()">�رմ���</a></p>
<%}
else
{%>
<p align="center">�Բ��𣡴��ʺ��ѱ���ע�ᣬ������ѡ�ʺ�<br><br>
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