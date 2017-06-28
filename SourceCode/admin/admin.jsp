<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%
String name1=(String)session.getAttribute("admin");
//name1=new String(name1.getBytes("ISO-8859-1"),"GBK");

if(!name1.equals(null)){


%>
<html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理员登陆提交页</title>
<style type="text/css">
<!--
body {
	background-color: #5EC3F7;
	background-image: url(../image/top1.gif);
	background-repeat: repeat-x;
}
.STYLE2 {
	color: #FFFFFF;
	font-size: 18px;
}
-->
</style></head>

<body>

</body>
</html>
<%}
else
{
}
stmt.close();
 con.close();
}
catch(SQLException e)
{
    out.println(e.toString());
}

 %>