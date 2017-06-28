<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>
<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;
String username=request.getParameter("user");
rs=stmt.executeQuery("select * from teacher where gonghao='"+username+"'");
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0057)http://www.webchina.com.cn/2007v2/admin/sysadmin_view.asp -->
<HTML><HEAD><TITLE>管理系统</TITLE>
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
      <td width="729" height="391"><form name="form1" method="post" action="editdo.jsp">
        <table width="100%" border="1">
          <tr>
            <td colspan="4" bgcolor="#A5B6D6"><div align="center" class="STYLE3">学生基本信息</div></td>
            <td width="21%" rowspan="6"><img src="teacherphoto/<%=rs.getString("photo")%>" width="123" height="140"></td>
          </tr>
          <tr>
            <td width="10%">学号</td>
            <td width="28%"><FONT class=t4>
              
              <input name="gonghao" type="text" id="gonghao" readonly="true" value="<%=rs.getString("gonghao")%>">
            </FONT></td>
            <td width="13%">姓名</td>
            <td width="28%"><FONT class=t4>
              <input name="name" type="text" id="name" value="<%=rs.getString("name")%>">
            </FONT></td>
          </tr>
          <tr>
            <td>性别</td>
            <td><FONT class=t4>
              <input name="sex" readonly="true" type="text" id="sex" value="<%=rs.getString("sex")%>">
            </FONT></td>
            <td>出生年份</td>
            <td><FONT class=t4>
              <input name="chusheng" type="text" id="chusheng" value="<%=rs.getString(6)%>">
            </FONT></td>
          </tr>
          <tr>
            <td>学位</td>
            <td><FONT class=t4>
              <input name="xuewei" type="text" id="xuewei" value="<%=rs.getString("xuewei")%>">
            </FONT></td>
            <td>职称</td>
            <td><FONT class=t4>
              <input name="zhicheng" type="text" id="zhicheng" value="<%=rs.getString("zhicheng")%>">
            </FONT></td>
          </tr>
          <tr>
            <td>特殊身份</td>
            <td><FONT class=t4>
              <input name="teshu" type="text" id="teshu" value="<%=rs.getString("teshu")%>">
            </FONT></td>
            <td>Email</td>
            <td><FONT class=t4>
              <input name="email" type="text" id="email" value="<%=rs.getString("email")%>">
            </FONT></td>
          </tr>
          <tr>
            <td>固定电话</td>
            <td><FONT class=t4>
              <input name="tel" type="text" id="tel" value="<%=rs.getString("tel")%>">
            </FONT></td>
            <td>手机</td>
            <td><FONT class=t4>
              <input name="shouji" type="text" id="shouji" value="<%=rs.getString("shouji")%>">
            </FONT></td>
          </tr>
          <tr>
            <td height="210"><p>个<br>
                    <br>
              人</p>
                <p>简</p>
              <p>历</p>
              <p>&nbsp;</p></td>
            <td colspan="4"><textarea name="jianli" class="jianli" id="jianli"><%=rs.getString("jianli")%></textarea></td>
          </tr>
          <tr>
            <td height="22">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
