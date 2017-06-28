<%@page contentType="text/html;charset=gb2312" language="java" import="java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>登陆系统！</title>



<SCRIPT>
<!--

function check()
{
	if(document.frmLogin.UserNm.value=="")
	{
		alert("请输入用户名！");
		document.frmLogin.UserNm.focus();
		return false
	}
	
	if (document.frmLogin.UserNm.value.length < 4)
		{
			alert("对不起，用户帐号不能少于4位");
			
			document.frmLogin.UserNm.focus();
			return false;
		}

	if (document.frmLogin.UserNm.value.length > 15)
		{
			alert("对不起，用户帐号不能大于15位");
			
			document.frmLogin.UserNm.focus();
			return false;
		}

	if(/[^a-zA-Z0-9_]/g.test(document.frmLogin.UserNm.value) || /[^a-zA-Z]/g.test(document.frmLogin.UserNm.value.substr(0,1)))
	{
		alert("用户名只能用数字或英文,并且必须为英文字母开头!");
		document.frmLogin.UserNm.focus();
		return false;
	}
	if(document.frmLogin.UserPasswd.value=="")
	{
		alert("请输入密码！");
		document.frmLogin.UserPasswd.focus();
		return false
	}
	
	if (document.frmLogin.UserPasswd.value.length < 4)
		{
			alert("对不起，用户密码不能少于4位");
			
			document.frmLogin.UserPasswd.focus();
			return false;
		}
if (document.frmLogin.UserPasswd.value.length>15)
		{
			alert("对不起，用户密码不大少于15位");
			
			document.frmLogin.UserPasswd.focus();
			return false;
		}
	
	
	if(document.frmLogin.rand.value=="")
	{
		alert("请输入验证码！");
		document.frmLogin.rand.focus();
		return false
	}
	//document.frmLogin.submit();
	return true;
}

function check_username()
{
	document.frmLogin.UserNm.value = document.frmLogin.UserNm.value.replace(/\s/g,"");
}

function MM_callJS(jsStr) { //v2.0
  return eval(jsStr)
}
//-->
</SCRIPT>
<style type="text/css">
<!--
.btn {	PADDING-RIGHT: 2px;
	PADDING-LEFT: 2px;
	FONT-SIZE: 12px;
FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#FFFFFF, EndColorStr=#9DBCEA); 	PADDING-BOTTOM: 0px;
	CURSOR: hand;
	COLOR: black;
	PADDING-TOP: 2px;
	BACKGROUND-COLOR: #bfefff;
	border: 1px solid #0000FF;
}
.input {BORDER-RIGHT: #8dafd3 1px solid; BORDER-TOP: #8dafd3 1px solid; BORDER-LEFT: #8dafd3 1px solid; WIDTH: 100px; BORDER-BOTTOM: #8dafd3 1px solid; HEIGHT: 17px
}
.tjj {WIDTH: 70px}
a:link {
	font-size: 12px;
	color: #006633;
	text-decoration: none;
}
.i {
	height: 17px;
	width: 68px;
}
.yh {FONT-SIZE: 14px; HEIGHT: 30px
}
.zhuce {	color: black;
	background-color: #BFEFFF;
	padding-top: 2px;
	padding-right: 2px;
	padding-bottom: 0px;
	padding-left: 2px;
	border: 1px solid #B5ECA8;
	cursor: hand;
	width: 50px;
	font-size: 12px;
}
a:visited {
	font-size: 12px;
	text-decoration: none;
}
.logi {
	border: 2px solid #FFCCCC;
	font-size: 12px;
	color: #0000FF;
	height: auto;
	width: 206px;
}
-->
</style>

<style type="text/css">
<!--
.blue {	font-size: 12px;
	border: 1px solid #FFCCCC;
}
.btn1 {FONT-SIZE: 12px;
FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#FFFFFF, EndColorStr=#9DBCEA);
	COLOR: #003399;
	BACKGROUND-COLOR: #bfefff;
	border: 1px solid #FEE2F0;
	width: 70px;
}
.input1 {BORDER-RIGHT: #8dafd3 1px solid;
	BORDER-TOP: #8dafd3 1px solid;
	BORDER-LEFT: #8dafd3 1px solid;
	WIDTH: 100px;
	BORDER-BOTTOM: #8dafd3 1px solid;
	HEIGHT: 17px;
	font-size: 12px;
	color: #0033FF;
	background-color: #FFFFFF;
}
body {
	background-color: #FFFFFF;
}
.image {	height: 18px;
	width: 55px;
}
.STYLE26 {color: #0000FF}
.STYLE48 {color: #73C41F}
.STYLE49 {color: #DF742E}
.sousuoinput1 {width: 450px;
	border: 1px solid #FAC2DD;
	height: 25px;
	background-repeat: no-repeat;
	background-attachment: fixed;
	font-size: 12px;
	color: #0000FF;
	background-color: #FFFFFF;
}
#Layer4 {	position:absolute;
	width:325px;
	height:22px;
	z-index:1;
	left: 618px;
	top: 27px;
	visibility: visible;
}
#Layer5 {	position:absolute;
	width:56px;
	height:68px;
	z-index:2;
	left: 502px;
	top: 10px;
}
body,td,th {
	font-size: 12px;
}
.STYLE52 {
	font-size: 16px;
	color: #0000CC;
}
.STYLE53 {color: #006600}
.STYLE55 {color: #006600; font-size: 14px; }
.STYLE50 {color: #FFFFFF}
.STYLE56 {color: #CC00CC}
.STYLE57 {color: #F5FDFF; }
.tableguid {width: 945px;
	font-size: 12px;
	text-decoration: none;
}
.STYLE58 {color: #006666}
.STYLE59 {color: #CCCCCC}
.STYLE59 {color: #333333; }
-->
</style>
</head>

<body>

<div align="center">
  <table width="667" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tabl">
    <tbody>
      <tr>
        <td width="667" height="10"></td>
      </tr>
      <tr>
        <td height="11" bgcolor="#fcc80c"></td>
      </tr>
      <tr>
        <td height="236" align="middle"><DIV align=center>
            <form action="logindo.jsp" 
      method="post" name="frmLogin" id="frmLogin" onsubmit="return check()">
              <table style="BORDER-COLLAPSE: collapse" bordercolor="#FAC2DD" cellspacing="0" 
      cellpadding="3" width="666" bgcolor="#FFFFFF">
                <tbody>
                  <tr>
                    <td colspan="4" 
            height="27"><div align="center"><font color="#ffffff"></font></div></td>
                  </tr><%String u=(String)session.getAttribute("loginname");
				  
				
				  
				  %>
                  <tr>
                    <td align="right" width="22%">用户帐号：</td>
                    <td colspan="3"><div align="left">
                        <input 
name="UserNm" class="input1" id="UserNm" onblur="check_username();" value="<%=u%>" />
                        <font 
            color="#ff0000"> ＊必填</font><br />
                      注：用户帐号长度为4-15位，只能由英文字母、阿拉伯数字构成</div></td>
                  </tr>
                  <tr>
                    <td align="right">密 &nbsp;&nbsp;&nbsp;码 :</td>
                    <td colspan="3"><div align="left"><span class="yh">
                        <input 
name="UserPasswd" type="password" class="input1" id="UserPasswd" />
                    </span><font 
            color="#ff0000">＊必填</font></div></td>
                  </tr>
                  <tr class="blue" background="../../image/bg_web_a.jpg">
                    <td height="28"><div align="right">验 证 码 : </div></td>
                    <td width="16%"><div align="left"><span class="yh">
                      <input 
name="rand" type="text" class="i" id="rand" />
                    </span></div></td>
                    <td width="11%"><div align="left"><img   src="image.jsp" width="54" height="22"   border="0" /> </div></td>
                    <td width="51%"><div align="left"><a href="update.html" target="_blank">修改密码</a><a href="../../bbs/user/forget.html" target="_blank"></a><a href="forget.html" target="_blank">?忘记密码</a></div></td>
                  </tr>
                </tbody>
              </table>
              <p align="center"><input name="image" type="image" id="image"  src="../../images/dl.gif" />
              </p>
          </form></td>
      </tr>
      <tr>
        <td height="25" align="middle"><table width="666" bgcolor="#fcc80c">
            <tr>
              <td width="658" height="8"></td>
            </tr>
            </table>
           </td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>
