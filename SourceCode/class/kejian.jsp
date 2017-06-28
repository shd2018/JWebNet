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
      <td width="108">老师工号</td>
      <td width="82">课件名</td>
      <td width="134">课件文件名</td>
      <td width="108">上传时间</td>
      <td width="57">下载</td>
      <td width="99">&nbsp;</td>
    </tr><%while(rs.next())
{%>
    <tr>
      <td><a href="teacherinfo.jsp?gonghao=<%=rs.getString(2)%>" ><%=rs.getString(2)%></a></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <td><a href="../teacher/kejian/<%=rs.getString(5)%>">下载</a></td>
      <td>&nbsp;</td>
    </tr>  <%
}
%>
  </table>

  
  
  
  <a href="javascript:history.back()">返回</a></div>
