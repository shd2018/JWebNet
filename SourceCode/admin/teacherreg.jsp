<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*" errorPage=""%>
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
<title>XXX企业用户注册页面</title>

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
	font-family: 宋体;
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


  <div align="center">
    <table width="337" height="42">
    <tr>
      <th width="36" height="36" scope="col">01</th>
      <th width="108" scope="col"><span class="STYLE54">--&gt;填写用户信息</span></th>
      <th width="37" scope="col">02</th>
      <th width="128" scope="col"><span class="STYLE54">---&gt;注册成功</span></th>
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
            height="27"><div align="left"><span class="STYLE52">教师注册</span>&nbsp;</div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">用户帐号：</td>
                    <td width="83%" colspan="2"><div align="left">
                      <input name="Username" class="formstyle"  size="22" />
                      <font 
            color="#ff0000"> ＊必填</font>
                      <input name=Check_ID type=button class="checkuser"  onclick=check_id_window(document.form.Username.value) value="检 测 帐 号" />
                      &nbsp;&nbsp;&nbsp;&nbsp;设好后不能更改<br />
                      注：用户帐号长度为4-10位，只能由英文字母、阿拉伯数字构成</div></td>
                  </tr>
                  <tr>
                    <td align="right">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">登录密码：</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" type="password" size="22" 
            name="Password" />
                      <font color="#ff0000"> ＊必填</font><br />
                      注：长度为6-15位，只能由英文字母、阿拉伯数字构成</div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">密码确认：</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" type="password" size="22" 
            name="Password1" />
                      <font color="#ff0000"> ＊必填</font><br />
                    注：必须与上面的登录密码一致</div></td>
                  </tr>
                  <tr>
                    <td height="21" align="right">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
                    <td colspan="2"><div align="left">
                      <input type="radio" checked="checked" value="男" 
            name="Sex" />
                      男性&nbsp;&nbsp;
                      <input type="radio" value="女" name="Sex" />
                      女性 </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">安全提问：</td>
                    <td colspan="2"><div align="left">
                      <select  name="questionid" size="1"class="formstyle" tabindex="4">
                        <option selected="selected">请选择安全提问?</option>
                        <option value="1">母亲的名字</option>
                        <option 
        value="2">爷爷的名字</option>
                        <option value="3">父亲出生的城市</option>
                        <option 
        value="4">您其中一位老师的名字</option>
                        <option value="5">您个人计算机的型号</option>
                        <option 
        value="6">您最喜欢的餐馆名称</option>
                        <option 
  value="7">驾驶执照的最后四位数字</option>
                        <option value="8" selected="selected">我最爱的人的名字</option>
                        <option value="9">我最喜欢的物品的名称</option>
                        <option value="10">我最爱的电影名称</option>
                        <option value="11">中学的校名</option>
                        <option value="12">我最喜欢的歌曲？</option>
                        <option value="13">我最喜欢的食物？</option>
                        <option value="14">我的初恋日期？</option>
                        <option value="15">我妈妈的生日？</option>
                      </select>
                      <font color="#ff0000">＊必选</font>为了找回密码请填写!</div></td>
                  </tr>
                  <tr>
                    <td align="right">回&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;答::</td>
                    <td colspan="2"><div align="left">
                      <input name="da" class="formstyle" id="da" size="30" />
                      <font color="#ff0000">＊必填</font>为了找回密码请填写!</div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">省&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;份：</td>
                    <td colspan="2"><div align="left">
                      <select class="formstyle" size="1" name="Province">
                        <option selected="selected">- 请选择 -</option>
                        <option value="安徽">安徽</option>
                        <option value="北京">北京</option>
                        <option value="重庆">重庆</option>
                        <option 
              value="福建">福建</option>
                        <option value="甘肃">甘肃</option>
                        <option 
              value="广东">广东</option>
                        <option value="广西">广西</option>
                        <option 
              value="贵州">贵州</option>
                        <option value="海南">海南</option>
                        <option 
              value="河北">河北</option>
                        <option value="黑龙江">黑龙江</option>
                        <option 
              value="河南">河南</option>
                        <option value="湖北">湖北</option>
                        <option 
              value="湖南">湖南</option>
                        <option value="内蒙古">内蒙古</option>
                        <option 
              value="江苏">江苏</option>
                        <option value="江西">江西</option>
                        <option 
              value="吉林">吉林</option>
                        <option value="辽宁">辽宁</option>
                        <option 
              value="宁夏">宁夏</option>
                        <option value="青海">青海</option>
                        <option 
              value="山西">山西</option>
                        <option value="陕西">陕西</option>
                        <option 
              value="山东">山东</option>
                        <option value="上海">上海</option>
                        <option 
              value="四川">四川</option>
                        <option value="天津">天津</option>
                        <option 
              value="西藏">西藏</option>
                        <option value="新疆">新疆</option>
                        <option 
              value="云南">云南</option>
                        <option value="浙江">浙江</option>
                        <option 
              value="其他">其他</option>
                      </select>
                    <font color="#ff0000">＊必选</font></div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">市 / 县 / 镇：</td>
                    <td colspan="2"><div align="left">
                      <input name="a" class="formstyle" id="a" size="30" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">联系地址：</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" size="30" name="Address" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">邮政编码：</td>
                    <td colspan="2"><div align="left">
                      <input name="aa" class="formstyle" id="aa" size="8" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" size="22" name="Tel" />
                      <br />
                      如：020-82582588，或13922288800</div></td>
                  </tr>
                  
                  <tr>
                    <td align="right" width="17%">电子邮箱：</td>
                    <td colspan="2"><div align="left">
                      <input class="formstyle" size="30" name="Email" />
                      <font 
            color="#ff0000">＊必填</font><br />
                      注：请填写最常用的邮箱地址，因为业务开通信息、免费活动、业务续费通知等重要通知会发到此邮箱里</div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">备用邮箱：</td>
                    <td colspan="2"><div align="left"><br />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="right" width="17%">其它联系方式：</td>
                    <td colspan="2"><div align="left">QQ号码
                      <input class="formstyle" size="13" name="QQ" />
                      MSN
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
                  <input type="image" src="../../images/re1g.gif" width="119" height="32"  name="Submit" value="提交" />
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
