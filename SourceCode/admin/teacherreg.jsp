<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*" errorPage=""%>
<%@ page import="java.util.*" %>
<SCRIPT language=JavaScript>
//У��user�ĵ�������
function check_id_window(value){	window.open("check_id.jsp?user="+value,"",'toolbar=no,directories=no,scrollbars=0,resizable=1,status=no,menubar=0,width=250,height=100');
}
</SCRIPT>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>XXX��ҵ�û�ע��ҳ��</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<SCRIPT language="javascript" src="UserRegForm.js"></SCRIPT>
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
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
      

  <div id="apDiv1"></div>
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
            <form action="regdo.jsp" 
      method="post" name="form" id="form" onSubmit="return check_form()">
              <table style="BORDER-COLLAPSE: collapse" bordercolor="#FAC2DD" cellspacing="0" 
      cellpadding="3" width="700" bgcolor="#FFFFFF">
                <tbody>
                  <tr>
                    <td colspan="3" 
            height="27"><div align="left"><span class="STYLE52">��ʦע��</span>&nbsp;</div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">�û��ʺţ�</td>
                    <td width="83%" colspan="2"><div align="left">
                      <input name="Username" class="formstyle"  size="22" />
                      <font 
            color="#ff0000"> ������</font>
                      <input name=Check_ID type=button class="checkuser"  onclick=check_id_window(document.form.Username.value) value="�� �� �� ��" />
                      &nbsp;&nbsp;&nbsp;&nbsp;��ú��ܸ���<br />
                      ע���û��ʺų���Ϊ4-10λ��ֻ����Ӣ����ĸ�����������ֹ���</div></td>
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
                    <td height="21" align="right">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
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
                    <td align="right" width="17%">��ȫ���ʣ�</td>
                    <td colspan="2"><div align="left">
                      <select  name="questionid" size="1"class="formstyle" tabindex="4">
                        <option selected="selected">��ѡ��ȫ����?</option>
                        <option value="1">ĸ�׵�����</option>
                        <option 
        value="2">үү������</option>
                        <option value="3">���׳����ĳ���</option>
                        <option 
        value="4">������һλ��ʦ������</option>
                        <option value="5">�����˼�������ͺ�</option>
                        <option 
        value="6">����ϲ���Ĳ͹�����</option>
                        <option 
  value="7">��ʻִ�յ������λ����</option>
                        <option value="8" selected="selected">������˵�����</option>
                        <option value="9">����ϲ������Ʒ������</option>
                        <option value="10">����ĵ�Ӱ����</option>
                        <option value="11">��ѧ��У��</option>
                        <option value="12">����ϲ���ĸ�����</option>
                        <option value="13">����ϲ����ʳ�</option>
                        <option value="14">�ҵĳ������ڣ�</option>
                        <option value="15">����������գ�</option>
                      </select>
                      <font color="#ff0000">����ѡ</font>Ϊ���һ���������д!</div></td>
                  </tr>
                  <tr>
                    <td align="right">��&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;��::</td>
                    <td colspan="2"><div align="left">
                      <input name="da" class="formstyle" id="da" size="30" />
                      <font color="#ff0000">������</font>Ϊ���һ���������д!</div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">ʡ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ݣ�</td>
                    <td colspan="2"><div align="left">
                      <select class="formstyle" size="1" name="Province">
                        <option selected="selected">- ��ѡ�� -</option>
                        <option value="����">����</option>
                        <option value="����">����</option>
                        <option value="����">����</option>
                        <option 
              value="����">����</option>
                        <option value="����">����</option>
                        <option 
              value="�㶫">�㶫</option>
                        <option value="����">����</option>
                        <option 
              value="����">����</option>
                        <option value="����">����</option>
                        <option 
              value="�ӱ�">�ӱ�</option>
                        <option value="������">������</option>
                        <option 
              value="����">����</option>
                        <option value="����">����</option>
                        <option 
              value="����">����</option>
                        <option value="���ɹ�">���ɹ�</option>
                        <option 
              value="����">����</option>
                        <option value="����">����</option>
                        <option 
              value="����">����</option>
                        <option value="����">����</option>
                        <option 
              value="����">����</option>
                        <option value="�ຣ">�ຣ</option>
                        <option 
              value="ɽ��">ɽ��</option>
                        <option value="����">����</option>
                        <option 
              value="ɽ��">ɽ��</option>
                        <option value="�Ϻ�">�Ϻ�</option>
                        <option 
              value="�Ĵ�">�Ĵ�</option>
                        <option value="���">���</option>
                        <option 
              value="����">����</option>
                        <option value="�½�">�½�</option>
                        <option 
              value="����">����</option>
                        <option value="�㽭">�㽭</option>
                        <option 
              value="����">����</option>
                      </select>
                    <font color="#ff0000">����ѡ</font></div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">�� / �� / ��</td>
                    <td colspan="2"><div align="left">
                      <input name="a" class="formstyle" id="a" size="30" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">��ϵ��ַ��</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" size="30" name="Address" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">�������룺</td>
                    <td colspan="2"><div align="left">
                      <input name="aa" class="formstyle" id="aa" size="8" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" size="22" name="Tel" />
                      <br />
                      �磺020-82582588����13922288800</div></td>
                  </tr>
                  
                  <tr>
                    <td align="right" width="17%">�������䣺</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" size="30" name="Email" />
                      <font 
            color="#ff0000">������</font><br />
                      ע������д��õ������ַ����Ϊҵ��ͨ��Ϣ����ѻ��ҵ������֪ͨ����Ҫ֪ͨ�ᷢ����������</div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">�������䣺</td>
                    <td colspan="2"><div align="left"><br />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">������ϵ��ʽ��</td>
                    <td colspan="2"><div align="left">QQ����
                      <input class="formstyle" size="13" name="QQ" />
                      ����MSN
                      <input class="formstyle" size="28" name="MSN" />
                    </div></td>
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
                  <input type="image" src="../../images/re1g.gif" width="119" height="32"  name="Submit" value="�ύ" />
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
