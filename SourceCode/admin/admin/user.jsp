
<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@include file="../../conn.jsp"%>

<%

int intpagesize; //һҳ��ʾ�ļ�¼��
int introwcount; //��¼����
int intpagecount; //��ҳ��
int intpage; //����ʾҳ��
String strpage;
int i;
//����һҳ��ʾ�ļ�¼��
intpagesize = 50;
//ȡ�ô���ʾҳ��
strpage = request.getParameter("page");
if(strpage==null){//������querystring��û��page��һ����������ʱ��ʾ��һҳ����
intpage = 1;
}
else{//���ַ���ת��������
intpage = Integer.parseInt(strpage);
if(intpage<1) intpage = 1;
}
//װ��jdbc��������


  ResultSet sqlrst;

String strSQL="select * from software";
sqlrst=stmt.executeQuery(strSQL);

sqlrst.last();
introwcount = sqlrst.getRow();
//������ҳ��
intpagecount = (introwcount+intpagesize-1) / intpagesize;
//��������ʾ��ҳ��
if(intpage>intpagecount) intpage = intpagecount;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��������ڲ�����.......</title>
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
	background-image: url(../../../image/group362.gif);
	background-repeat: repeat-x;
}
.hg {
	height: 54px;
	width: 971px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: dashed;
	border-right-color: #7F9DB9;
	border-bottom-color: #7F9DB9;
	font-size: 12px;
	color: #7996DE;
}
.ff {
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	border-right-color: #42A342;
	border-bottom-color: #42A342;
}
.STYLE1 {
	font-size: 24px;
	color: #1749A0;
}
.STYLE2 {font-family: "������"}
-->
</style>
</head>
<body>
<p>&nbsp;</p>
<p class="STYLE1">��<span class="STYLE2">����������!</span></p>
<table width="971" height="67" cellpadding="0" cellspacing="0" bgcolor="#EDFBFE" class="hg">
<tr>
<th class="ff" width="191" height="26">�ļ�����</th>
<th class="ff" width="87">�������</th>
<th class="ff" width="66">�ļ�����</th>
<th class="ff" width="67">�ļ���С</th>
<th class="ff" width="55">���ʱ��</th>
<th class="ff" width="393">URL</th>
<th class="ff" colspan="2">����</th>
</tr>
<%
if(intpagecount>0){
//����¼ָ�붨λ������ʾҳ�ĵ�һ����¼��
sqlrst.absolute((intpage-1) * intpagesize + 1);
//��ʾ����
i = 0;
while(i<intpagesize){
%>
<tr>
<td height="39" class="ff"><%int row=sqlrst.getInt(1);%><%=sqlrst.getString(2)%></td>
<td class="ff"><%=sqlrst.getString(3)%></td>
<td class="ff" width="66"><%=sqlrst.getString(4)%></td>
<td class="ff" width="67"><%=sqlrst.getString(5)%></td>
<td class="ff" width="55"><%=sqlrst.getString(6)%></td>
<td class="ff" width="393"><%=sqlrst.getString(8)%></td>
<td class="d" width="53"><a href="softdel.jsp?id=<%=row%>" >ɾ��</a></td>

<td class="d" width="57"><a href="softupdate.jsp?id=<%=row%>" target="_blank">�޸�</a></td>
</tr>
<%if(
sqlrst.next()){
i++;}else{break;}
}
}
%>
</table>
<p>��<%=intpage%>ҳ&nbsp;&nbsp;<a href="softquery.jsp?page=<%=intpagecount%>">���һҳ</a>&nbsp;&nbsp;��<%=intpagecount%>ҳ
  <%if(intpage<intpagecount){%>
  <a href="softquery.jsp?page=<%=intpage+1%>">��һҳ</a>
  <%}%>
  <%if(intpage>1){%>
  <a 
href="softquery.jsp?page=<%=intpage-1%>">��һҳ</a>
  <%}%>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
<%
//rs.close();
 stmt.close();
 con.close();
}
catch(SQLException es)
{
    out.println(es.toString());
}
 %>