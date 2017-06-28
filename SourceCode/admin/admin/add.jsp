<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@include file='../../../../mysite/DataBase/conn.jsp'%>
<% String user=(String)session.getAttribute("supper");
// if(user==null || user=="") { out.print("<script language='javascript'>alert('对不起！您没有权利！');window.close();</script>");
//}else{

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<style type="text/css">
<!--
.an1 {font-size: 12px;
	color: #FFFFFF;
	border: 1px solid #86C9E6;
	background-color: #FFFFFF;
	background-image: url(../../../../mysite/image/aa.jpg);
}
-->
</style>
</head>
<script language="javascript" src="../../../../mysite/DataBase/manage/upload/upload.js"></script>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
body {
	background-color: #FFFFFF;
}
.STYLE2 {	font-size: 16px;
	color: #0000FF;
}
.STYLE2 {font-size: 16px; color: #006633; }
.URL {
	height: 25px;
	width: 580px;
}
.an {	font-size: 12px;
	color: #FFFFFF;
	border: 1px solid #86C9E6;
	background-color: #FFFFFF;
	background-image: url(../../../../mysite/image/top1.gif);
}
.table {
	width: auto;
	font-size: 12px;
	color: #006666;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #ADD8EB;
	border-right-color: #ADD8EB;
	border-bottom-color: #ADD8EB;
	border-left-color: #ADD8EB;
	height: 275px;
}
.g {
	height: 100px;
	width: 100px;
}
.text2 {	height: 20px;
	width: 180px;
	border: 1px solid #9BCBDF;
	background-color: #FFFFFF;
}
.textarea1 {
	background-image: url(../../../../mysite/image/q.jpg);
	height: 80px;
	width: 900px;
	font-size: 14px;
	color: #FF0000;
	text-decoration: none;
	background-repeat: no-repeat;
	background-position: center center;
}
.textarea {	height: 130px;
	width: 568px;
	border: 1px solid #9BCBDF;
	background-color: #FFFFFF;
	font-size: 12px;
	color: #006633;
}
-->
</style>
<body>
<form id="form1" name="form1" method="post" action="imageuploaddo.jsp" ENCTYPE="multipart/form-data" onsubmit="return check();"><div align="center">
  <table width="732" height="275" background="../../../../mysite/image/mz_login012.gif" class="table">
      <tr>
        <th height="29" scope="col"><div align="left">产品名称:</div></th>
        <th height="29" scope="col"><div align="left">
          <input name="name" type="text" class="text2" id="name" />
        </div></th>
        <th height="29" scope="col">产品类型：</th>
        <th height="29" scope="col"><div align="left">
          <input name="softtype" type="text" class="text2" id="softtype" />
        </div></th>
      </tr>
      <tr>
        <td width="99" height="40" bgcolor="#EDFBFE">产品大小：:</td>
        <td width="320" bgcolor="#EDFBFE"><div align="left">
          <input name="filetype" type="text" class="text2" id="filetype" />
        如</div></td>
        <td width="80" bgcolor="#EDFBFE">产品价格：:</td>
        <td width="213" bgcolor="#EDFBFE"><div align="left">
          <input name="size" type="text" class="text2" id="size" value="" />
        </div></td>
      </tr>
      <tr>
        <td height="27" bgcolor="#EDFBFE">产品图片：          </td>
        <td height="27" colspan="3" bgcolor="#EDFBFE"> <INPUT TYPE="FILE" NAME="FILE1" SIZE="50"></td>
      </tr>
      <tr>
        <td height="140" colspan="4" bgcolor="#EDFBFE"><table width="100%" height="138" border="0">
          <tr>
            <td width="14%" height="134" bgcolor="#EDFBFE"><p align="center" class="STYLE2">产品简介:</p></td>
            <td width="86%"><div align="left"><span class="STYLE2">
              <textarea name="jieshao" class="textarea" id="jieshao"></textarea>
            </span></div></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td height="24" bgcolor="#EDFBFE">&nbsp;</td>
        <td colspan="3" bgcolor="#EDFBFE"><div align="center">
          <input name="Submit" type="submit" class="an1" value="上传" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name="Submit2" type="reset" class="an1" value="重置" />
        </div></td>
      </tr>
    </table>
    
  </div>
</form> 
</body></html> 
<%stmt.close();
//关闭数据库

con.close();}
catch(SQLException e)
{
    out.println(e.toString()+"请不要非法操作");
}
catch(java.lang.NullPointerException g)
{out.println(g.toString()+"请不要非法操作");}
catch(java.lang.NumberFormatException D)
{out.println(D.toString()+"请不要非法操作");}


%> 