<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<%@ page import="java.util.*" %>
<script language=JavaScript>
//У��user�ĵ�������
function check_id_window(value){	window.open("check_id.jsp?user="+value,"",'toolbar=no,directories=no,scrollbars=0,resizable=1,status=no,menubar=0,width=250,height=100');
}
</SCRIPT>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��ʦע��ҳ��</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<SCRIPT language="javascript" src="UserRegForm.js"></SCRIPT>
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
.jianli {
	height: 220px;
	width: 550px;
}
.sousuoinput1 {width: 450px;
	border: 1px solid #FAC2DD;
	height: 25px;
	background-repeat: no-repeat;
	background-attachment: fixed;
	font-size: 12px;
	color: #0000FF;
	background-color: #FFFFFF;
}
#Layer4 {position:absolute;
	width:313px;
	height:22px;
	z-index:1;
	left: 633px;
	top: 23px;
	visibility: visible;
}
#Layer5 {position:absolute;
	width:56px;
	height:68px;
	z-index:2;
	left: 499px;
	top: 11px;
}
body,td,th {
	font-size: 12px;
	font-family: ����;
}
.STYLE50 {font-size: 14px}
.STYLE52 {font-size: 14px; color: #FF0000; }
.STYLE54 {color: #0066FF}
.STYLE55 {color: #FFFFFF}
.STYLE56 {color: #CC00CC}
.STYLE57 {color: #F5FDFF; }
a:link {
	font-size: 12px;
	text-decoration: none;
}
.tableguid {width: 945px;
	font-size: 12px;
	text-decoration: none;
}
a:visited {
	font-size: 12px;
	text-decoration: none;
}
#apDiv1 {
	position:absolute;
	width:108px;
	height:394px;
	z-index:1;
	left: 8px;
	top: 447px;
}
.checkuser {
	background-color: #CCFFFF;
	border: 1px solid #80A5E7;
	color: #3399FF;
}
.STYLE84 {color: #FFFFFF; font-size: 14px; }
.STYLE63 {font-size: 16px}
.STYLE82 {color: #FF8700}
.gg {background-color: #f5fdff;
	height: 20px;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: solid;
	border-left-style: none;
	border-top-color: #cae8ff;
	border-right-color: #cae8ff;
	border-bottom-color: #cae8ff;
	border-left-color: #cae8ff;
}
.sele {width: 75px;
	border: 1px solid #cae8ff;
	font-size: 12px;
	font-family: "����";
}
.sou {width: 300px;
	border: 1px solid #B9CFFB;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-position: left center;
	height: 20px;
}
#Layer1 {
	position:absolute;
	width:112px;
	height:383px;
	z-index:2;
	left: 801px;
	top: 509px;
}
-->
</style>
</head>

<body>


<div align="center">
    <table width="337" height="42">
    <tr>
      <th width="36" height="36" scope="col">01</th>
      <th width="108" scope="col"><span class="STYLE54">--&gt;��д�û���Ϣ</span></th>
      <th width="37" scope="col">02</th>
      <th width="128" scope="col"><span class="STYLE54">---&gt;ע��ɹ�</span></th>
    </tr>
  </table>
</div>
      

  <div align="center">
    <table width="780" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tabl">
      <tbody>
        <tr>
          <td bgcolor="#5DA9F6" height="10"></td>
        </tr>
        <tr>
          <td height="25"></td>
        </tr>
        <tr>
          <td align="middle"><DIV align=center>
            <form action="regdo.jsp" enctype="multipart/form-data" 
      method="post" name="form" id="form" onSubmit="return check_form()">
              <table style="BORDER-COLLAPSE: collapse" bordercolor="#FAC2DD" cellspacing="0" 
      cellpadding="3" width="700" bgcolor="#FFFFFF">
                <tbody>
                  <tr>
                    <td colspan="3" 
            height="27"><div align="left"><span class="STYLE52">��ʦע��</span>&nbsp;</div></td>
                  </tr><tr><td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">�ϴ���Ƭ��</td>
                    <td width="83%" colspan="2"><div align="left">
                      <input type="file" name="file" />
                    </div></td>
                  </tr><tr>
                    <td align="right" width="17%">���ţ�</td>
                    <td width="83%" colspan="2"><div align="left">
                      <input name="Username" class="formstyle"  size="22" />
                      <font 
            color="#ff0000"> ������</font>
                      <input name=Check_ID type=button class="checkuser"  onclick=check_id_window(document.form.Username.value) value="�� �� �� ��" />
                      &nbsp;<br />
                      ע������Ϊ4-10λ��ֻ����Ӣ����ĸ�����������ֹ���</div></td>
                  </tr>
                  <tr>
                    <td align="right">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">��¼���룺</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" type="password" size="22" 
            name="Password" />
                      <font color="#ff0000"> ������</font><br />
                      ע������Ϊ6-15λ��ֻ����Ӣ����ĸ�����������ֹ���</div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">����ȷ�ϣ�</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" type="password" size="22" 
            name="Password1" />
                      <font color="#ff0000"> ������</font><br />
                    ע������������ĵ�¼����һ��</div></td>
                  </tr>
                  <tr>
                    <td height="21" align="right">����</td>
                    <td colspan="2"><input 
            name="name" type="text" class="formstyle" id="name" size="22" />
                    <font color="#ff0000">������</font></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</td>
                    <td colspan="2"><div align="left">
                      <input type="radio" checked="checked" value="��" 
            name="Sex" />
                      ����&nbsp;&nbsp;
                      <input type="radio" value="Ů" name="Sex" />
                      Ů�� </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">�������ڣ�</td>
                    <td colspan="2"><div align="left">
                      <input 
            name="chushen" type="text" class="formstyle" id="chushen" size="22" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right">ѧλ::</td>
                    <td colspan="2"><div align="left">
                      <input name="xuewei" class="formstyle" id="xuewei" size="30" />
                      <font color="#ff0000">������</font></div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">ְ�ƣ�</td>
                    <td colspan="2"><div align="left">
                      <input name="zhicheng" class="formstyle" id="zhicheng" size="30" />
                      <font color="#ff0000">������</font></div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">���⣺</td>
                    <td colspan="2"><div align="left">
                      <input name="teshu" class="formstyle" id="teshu" size="30" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">�������䣺</td>
                    <td colspan="2"><div align="left">
                      <input name="Email" class="formstyle" id="Email" size="30" />
                      <font color="#ff0000">������</font></div></td>
                  </tr>
                  
                  <tr>
                    <td align="right" width="17%">��&nbsp;&nbsp;����</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" size="22" name="Tel" />
                      <font color="#ff0000">������</font><br />
                    </div></td>
                  </tr>
                  
                  <tr>
                    <td align="right" width="17%">�ֻ���</td>
                    <td colspan="2"><div align="left">
                      <input name="shouji" class="formstyle" id="shouji" size="30" />
                      <font 
            color="#ff0000">������</font><br />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">������</td>
                    <td colspan="2"><div align="left">
                      <textarea name="jianli" class="jianli" id="jianli"></textarea>
                      <font 
            color="#ff0000">������</font></div></td>
                  </tr>
                </tbody>
              </table>
              <div align="center">
        <table width="772" height="13">
          <tr>
            <th height="8" bgcolor="#5DA9F6" scope="col"></th>
                </tr>
          </table>
              </div>
                <p align="center">
                  <input type="submit" name="Submit" value="�ύ" />
              
            </form>
            </P></td>
        </tr>
        <tr>
          <td align="middle" height="25"></td>
        </tr>
      </tbody>
    </table>
</div>
  <p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
