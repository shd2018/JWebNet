
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:driver={Microsoft Access Driver (*.mdb)};DBQ=E:/mysite/ROOT/qiyeweb/bbs/db/db.mdb;");//请修改路径以及数据库名
%>