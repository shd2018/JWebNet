<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>

<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;

String gonghao=(String)session.getAttribute("gonghao");

 rs=stmt.executeQuery("select * from kejian");

%>
<div align="center">
  <table width="100%" height="73" border="1">
    <tr>
      <td width="108">��ʦ����</td>
      <td width="82">�μ���</td>
      <td width="134">�μ��ļ���</td>
      <td width="108">�ϴ�ʱ��</td>
      <td width="57">����</td>
      <td width="99">&nbsp;</td>
    </tr><%while(rs.next())
{%>
    <tr>
      <td><a href="teacherinfo.jsp?gonghao=<%=rs.getString(2)%>" ><%=rs.getString(2)%></a></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <td><a href="../teacher/kejian/<%=rs.getString(5)%>">����</a></td>
      <td>&nbsp;</td>
    </tr>  <%
}
%>
  </table>

  
  
  
  <a href="javascript:history.back()">����</a></div>
