
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:driver={Microsoft Access Driver (*.mdb)};DBQ=E:/mysite/ROOT/qiyeweb/bbs/db/db.mdb;");//���޸�·���Լ����ݿ���
%>