<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"%>
<%
session.removeAttribute("gonghao");
out.print("<script language='javascript'>opener.location=opener.location;</script>");

%><title>安全退出</title>
您已成功退出！<a href="/">返回主页</a>



<a href="javascript:window.close()">关闭</a>

