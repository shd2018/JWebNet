<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"  %>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>

<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;

String username=request.getParameter("user");
rs=stmt.executeQuery("SELECT * from teacher where gonghao='"+username+"'");
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
<p align="center">�Բ��𣡴��ʺ��ѱ���ע�ᣬ������ѡ�ʺ�<br><br><a href="javascript:window.close()">�رմ���</a></p>
<a href='user.jsp?user=<%=username%>' target='_blank'>�鿴����ʦ��Ϣ</a></p>
<%}
 
 %>