<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0057)http://www.webchina.com.cn/2007v2/admin/sysadmin_view.asp -->
<HTML><HEAD><TITLE>ѧ����̨�������ϵͳ</TITLE>
<STYLE id=123 type=text/css media=all>
IFRAME {
	v: e-xpression(this.src='about:blank',this.outerHTML='')
}
#f126 {
	v: e-xpression()
}
</STYLE>

<SCRIPT language=javascript>
<!--  
  if (window == top)top.location.href = "main.jsp"; 
// -->
</SCRIPT>

<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
.back_southidc {
	BACKGROUND-IMAGE: url(image/titlebg.gif); COLOR: #000000
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
	FONT: 12px ����; COLOR: #000000
}
.t2 {
	FONT: 12px ����; COLOR: #ffffff
}
.t3 {
	FONT: 12px ����; COLOR: #ffff00
}
.t4 {
	FONT: 12px ����; COLOR: #800000
}
.t5 {
	FONT: 12px ����; COLOR: #191970
}
.weiqun:hover {
	COLOR: #ffffff; FONT-FAMILY: "����"; BACKGROUND-COLOR: #cccccc; TEXT-DECORATION: underline; Font-unline: yes
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
.STYLE3 {font-size: 18px; font-family: "�����п�", Fixedsys;}
</STYLE>

<META content="MSHTML 6.00.2900.3354" name=GENERATOR></HEAD>
<BODY >
<TABLE  class=table_southidc cellSpacing=1 cellPadding=2 width="95%" align=center 
border=0 >
  <TBODY>
  <TR>
    <TD class=back_southidc align=middle colSpan=2 height=25><B>ϵͳ��Ϣ</B></TD></TR>
  <TR class=tr_southidc>
    <TD width="48%" height=23>ѧ�ţ�<FONT class=t4><%=session.getAttribute("xuehao")%></FONT></TD>
    <TD width="52%">IP��<%=request.getRemoteAddr()%></TD>
  </TR>
  <TR class=tr_southidc>
    <TD width="48%" height=23>����ʱ�䣺<%=session.getAttribute("logintime")%></TD>
    <TD width="52%">����ʱ�䣺<%java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd-hh-mm");
String time= dateFormat.format(new java.util.Date(System.currentTimeMillis()));
	  %><%=time%></TD>
  </TR>
  </TBODY></TABLE>
<div align="center">
  <table width="96%">
    <tr>
      <td width="656" height="391"><table width="99%" border="1">
        <tr>
          <td colspan="4" bgcolor="#CEEFFF"><div align="center" class="STYLE3">ѧ��������Ϣ</div></td>
          <td width="25%" rowspan="5"><img src="/teacher/teacherphoto/<%=session.getAttribute("photo")%>" width="123" height="140"></td>
        </tr>
        <tr>
          <td width="11%">ѧ��</td>
          <td width="17%"><FONT class=t4><%=session.getAttribute("xuehao")%></FONT></td>
          <td width="18%">����</td>
          <td width="29%"><FONT class=t4><%=session.getAttribute("name")%></FONT></td>
        </tr>
        <tr>
          <td>�Ա�</td>
          <td><FONT class=t4><%=session.getAttribute("sex")%></FONT></td>
          <td>�������</td>
          <td><FONT class=t4><%=session.getAttribute("birthday")%></FONT></td>
        </tr>
        
        <tr>
          <td>�̶��绰</td>
          <td><font class=t4><%=session.getAttribute("tel")%></font></td>
          <td>Email</td>
          <td><FONT class=t4><%=session.getAttribute("email")%></FONT></td>
        </tr>
        <tr>
          <td colspan="4">&nbsp;</td>
          </tr>
        <tr>
          <td height="210"><p>��<br>
                  <br>
            ��</p>
              <p>��</p>
            <p>��</p>
            <p>&nbsp;</p></td>
          <td colspan="4"><%=session.getAttribute("jianli")%></td>
        </tr>
        <tr>
          <td height="22">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><a href="javascript:window.close()">�رմ���</a></td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
      <td width="243">&nbsp;</td>
    </tr>
  </table>
</div>
<TABLE class=table_southidc cellSpacing=1 cellPadding=2 width="95%" align=center 
border=0>
  <TBODY>
  <TR >
    <TD class=back_southidc align=middle colSpan=2 
    height=25><B>ѧ����̨�������ϵͳ������</B></TD>
  </TR>
  <TR class=tr_southidc>
    <TD width="20%" height=23>��ϵ����</TD>
    <TD width="80%">E-mail:<A 
      href="mailto:61128110@163.com">mailto:xxx0@163.com</A><BR>
      Q Q:3333 34353543543 <BR>
      ��ַ��<FONT 
      color=#000000>http://www.xxxxxx.cn 
      </FONT></TD>
  </TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="95%" align=center>
  <TBODY>
  <TR>
    <TD align=middle>Copyright 2008><BR>
    Powered by <FONT 
      color=#ffffff><strong>������</strong></A></FONT>&nbsp;&copy; 2008<BR></TD>
  </TR></TBODY></TABLE>
</BODY></HTML>
