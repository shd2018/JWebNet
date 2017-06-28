<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style><form action="adminlogindo.jsp" method="post" name="form1" id="form1">

  <div align="center">
    <table width="256" border="1">
      <tr> <%String gonghao=(String)session.getAttribute("name");if(gonghao==null){gonghao="";}%>
        <td width="52">管理员</td>
        
        <td width="188"><input name="admin" type="text" id="admin" value="<%=gonghao%>" /></td>
      </tr>
      <tr>
        <td>密 码</td>
        <td><input name="password" type="password" id="password" /></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit2" value="login" />
          &nbsp;
          <input type="reset" name="Submit2" value="cancel" onclick="window.open('teacher/teacherreg.jsp')" />
          &nbsp;<a href="admin/updateadmin.html">修改密码</a></td>
      </tr>
    </table>
  </div>
</form>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
