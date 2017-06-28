<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<%@ page import="java.util.*" %>
<SCRIPT language=JavaScript>
//校验user的弹出窗口
function check_id_window(value){	window.open("check_id.jsp?user="+value,"",'toolbar=no,directories=no,scrollbars=0,resizable=1,status=no,menubar=0,width=250,height=100');
}
</SCRIPT>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>学生提问</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<SCRIPT language="javascript" >
function check_form()
{


		if (form.question.value=="")
		{
			alert ("对不起，请输入问题！");
			form.question.focus();
			return false;
		}
		
		if (form.jieshao.value=="")
		{
			alert ("对不起，请输入详细问题！");
			form.jieshao.focus();
			return false;
		}
		
		
return true;


}



</SCRIPT>
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
	font-family: 宋体;
}
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
	font-family: "宋体";
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


<div align="center">学生提问中心！</div>
      

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
            <form action="dokejian.jsp" 
      method="post" name="form" id="form" onSubmit="return check_form()">
              <table style="BORDER-COLLAPSE: collapse" bordercolor="#FAC2DD" cellspacing="0" 
      cellpadding="3" width="700" bgcolor="#FFFFFF">
                <tbody>
                  <tr>
                    <td colspan="3" 
            height="27"><div align="left">学生提问表单</div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">学号：</td>
                    <td width="83%" colspan="2"><div align="left">
                      <input name="Username" readonly="true" class="formstyle" value="<%=session.getAttribute("xuehao")%>"  size="22"/>
                    </div></td>
                  </tr>
                  
                  <tr>
                    <td align="right" width="17%">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                  </tr>
                  
                  <tr>
                    <td height="21" align="right">提问:</td>
                    <td colspan="2"><input 
            name="question" type="text" class="formstyle" id="question" size="22" />
                    <font color="#ff0000">＊必填 如，熊猫烧香病毒有谁有专杀工具吗？</font></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                  </tr>
                  
                  
                  
                  

                  <tr>
                    <td align="right" width="17%">问题介绍：</td>
                    <td colspan="2"><div align="left">
                      <textarea name="jieshao" class="jianli" id="jieshao"></textarea>
                      <font 
            color="#ff0000">＊必填</font></div></td>
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
                  <input type="submit" name="Submit" value="提交" />
              
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
