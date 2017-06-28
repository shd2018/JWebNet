<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>
<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;
String id=request.getParameter("id");
rs=stmt.executeQuery("select * from question where id='"+id+"'");
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0057)http://www.webchina.com.cn/2007v2/admin/sysadmin_view.asp -->
<HTML><HEAD><TITLE>学生提问详细查看页</TITLE>
<STYLE id=123 type=text/css media=all>
IFRAME {
	v: e-xpression(this.src='about:blank',this.outerHTML='')
}
#f126 {
	v: e-xpression()
}
</STYLE>



<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
.back_southidc {
	BACKGROUND-IMAGE: url(image/titlebg.gif); COLOR: #000000
}
.jianli {
	height: 220px;
	width: 550px;
}
.table_southidc {
	BACKGROUND-COLOR: #a4b6d7
}
.td_southidc {
	BACKGROUND-COLOR: #f2f8ff
}
.tr_southidc {
	BACKGROUND-COLOR: #ecf5ff
}
.t1 {
	FONT: 12px 宋体; COLOR: #000000
}
.t2 {
	FONT: 12px 宋体; COLOR: #ffffff
}
.t3 {
	FONT: 12px 宋体; COLOR: #ffff00
}
.t4 {
	FONT: 12px 宋体; COLOR: #800000
}
.t5 {
	FONT: 12px 宋体; COLOR: #191970
}
.weiqun:hover {
	COLOR: #ffffff; FONT-FAMILY: "宋体"; BACKGROUND-COLOR: #cccccc; TEXT-DECORATION: underline; Font-unline: yes
}
TD {
	FONT-SIZE: 12px
}
A:link {
	COLOR: #000000; TEXT-DECORATION: none
}
A:active {
	COLOR: #000000; TEXT-DECORATION: none
}
A:visited {
	COLOR: #000000; TEXT-DECORATION: none
}
.tit {
	FONT-SIZE: 14px
}
.STYLE3 {font-size: 18px; font-family: "华文行楷", Fixedsys;}
</STYLE>

<META content="MSHTML 6.00.2900.3354" name=GENERATOR></HEAD>
<BODY ><%if(rs.next()){%>
<div align="center">
  <table width="96%">
    <tr>
      <td width="729" height="391"><form name="form1" method="post" action="repl.jsp?id=<%=id%>">
        <table width="100%" border="1">
          <tr>
            <td colspan="4" bgcolor="#A5B6D6"><div align="center" class="STYLE3">学生提问详细查看页</div></td>
            <td width="10%" rowspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="7%">学号</td>
            <td width="24%"><a href="/class/class.jsp?user=<%=rs.getString(2)%>"><%=rs.getString(2)%></a></td>
            <td width="7%">问题</td>
            <td width="52%"><%=rs.getString(3)%></td>
          </tr>
          
          
          <tr>
            <td height="210"><p>问</p>
              <p>题</p>
              <p>描</p>
              <p>述</p>
              <p></p></td>
            <td colspan="4"><%=rs.getString(4)%></td>
          </tr>
          <tr>
            <td height="210"><p>老</p>
              <p>师</p>
              <p>回</p>
              <p>复</p></td>
            <td colspan="4"><textarea name="answer" class="jianli" id="answer"></textarea></td>
          </tr>
          <tr>
            <td height="22">&nbsp;</td>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" value="回复"></td>
            <td><a href="javascript:window.close()">关闭窗口</a></td>
            <td>&nbsp;</td>
          </tr>
        </table>
            </form>
      </td>
      <td width="180">&nbsp;</td>
    </tr>
  </table>
</div><%}%>
</BODY></HTML>
