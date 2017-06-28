<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<link href="css.css" rel="stylesheet" type="text/css">
<title>添加留言</title>
<form action="add2.jsp" method="post">

<table width="771" border="0" align="center" cellspacing="1" bgcolor="#333333">
  <tr>
    <td height="22" colspan="2" bgcolor="#FFCCFF">&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><div align="right">主题</div></td>
    <td bgcolor="#FFFFFF"><input value="" name="zt" type="text" /></td>
  </tr>
  <tr>
    <td width="13%" bgcolor="#FFFFFF"><div align="right">姓名</div></td>
    <td width="87%" bgcolor="#FFFFFF"><input value="<%=(String)session.getAttribute("name")%>" name="username" type="text" readonly="true" />
      <span class="STYLE4">*</span><span class="STYLE3">必填</span></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><div align="right">QQ：</div></td>
    <td bgcolor="#FFFFFF"><input value="" name="qq" type="text"   /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><div align="right">Email:</div></td>
    <td bgcolor="#FFFFFF"><label>
      <input value="" name="email" type="text" />
    </label></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><div align="right">性别：</div></td>
    <td bgcolor="#FFFFFF">
	<input type="radio" name="sex" value="boy"  align="absmiddle" checked="checked" />
男生
    <input type="radio" name="sex" value="girl" align="absmiddle" />
女生</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF" align="right">心 情</td>
    <td bgcolor="#FFFFFF">
	  <input type="radio" name="tx" value="images/a.gif" align="absmiddle" checked="checked"  />
      <img src="images/a.gif" width="59" height="51"  />
      <input type="radio" name="tx" value="images/b.gif" align="absmiddle"  />
      <img src="images/b.gif" width="56" height="51" />
      <input type="radio" name="tx" value="images/c.gif" align="absmiddle"  />
      <img src="images/c.gif" width="52" height="60" />
      <input type="radio" name="tx" value="images/d.gif" align="absmiddle"  />
      <img src="images/d.gif" width="68" height="53" />
      <input type="radio" name="tx" value="images/e.gif" align="absmiddle"  />
      <img src="images/e.gif" width="63" height="57" />
      <input type="radio" name="tx" value="images/f.gif" align="absmiddle"  />
    <img src="images/f.gif" width="57" height="55" />  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><div align="right">内容</div></td>
    <td bgcolor="#FFFFFF"><textarea name="nr" cols="50" rows="10"></textarea>
      <span class="STYLE4">*<span class="STYLE3">必填 最多255字符</span></span></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF"><input name="submit" type="submit" value=提交 />
      <input name="submit2" type="reset" value="重置" /></td>
  </tr>
</table>
</form>
<%@ include file="foot.jsp" %>
