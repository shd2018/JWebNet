<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
session.removeAttribute("name");
session.removeAttribute("gonghao");
session.removeAttribute("xuehao");
out.print("<script language='javascript'>opener.location=opener.location;</script>");


%><title>安全退出</title>
您已成功退出！<a href="/index.jsp">返回主页</a>



<a href="javascript:window.close()">关闭</a>

