<style type="text/css">
<!--
body {
	background-color: #F5FDFF;
	background-image: url();
	background-repeat: repeat-x;
}
body,td,th {
	font-size: 16px;
	color: #3300FF;
}
.STYLE91 {
	font-size: 18px;
	color: #FF0000;
}
.STYLE92 {color: #FF0000}
-->
</style><title>注册提交</title>
<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@include file="conn.jsp"%>
<%
 String name1=request.getParameter("Username");
 String ni=request.getParameter("ni");
  // name1=new String(name1.getBytes("ISO-8859-1"),"GBK");
  String pwda=request.getParameter("Password");
   //pwda=new String(pwda.getBytes("ISO-8859-1"),"GBK");
  String sheng1=request.getParameter("Province");
   // sheng1=new String(sheng1.getBytes("ISO-8859-1"),"GBK");
  String email1=request.getParameter("Email");
  
   String questionid=request.getParameter("questionid");
  // questionid=new String(questionid.getBytes("ISO-8859-1"),"GBK");
   String da=request.getParameter("da");
   //da=new String(da.getBytes("ISO-8859-1"),"GBK");
  String qq=request.getParameter("QQ");
   //qq=new String(qq.getBytes("ISO-8859-1"),"GBK");
java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
String time= dateFormat.format(new java.util.Date(System.currentTimeMillis()));
String tou=request.getParameter("tou");
int tou1=Integer.parseInt(tou);

String strSQL="INSERT INTO login (name, pass, sheng, email,datetime,question,answer,qq,hua,egg,mouse,girlhat,boyhat,jitui,cake,glod,soubi,nichen) VALUES('"+name1+"','"+pwda+"','"+sheng1+"','"+email1+"','"+time+"','"+questionid+"','"+da+"','"+qq+"',0,0,0,0,0,0,0,0,0,'"+ni+"')";

rs=stmt.executeQuery("select * from login where name='"+name1+"'");

if(!rs.next())
{
stmt.executeUpdate(strSQL);
//session.setAttribute("user",name1);
%><div align="center">
  <table width="355" height="42">
    <tr>
      <th width="38" height="36" scope="col">01</th>
      <th width="147" scope="col">---填写用户信息</th>
      <th width="41" scope="col">02</th>
      <th width="101" scope="col">---注册成功</th>
    </tr>
  </table>
  <table width="286">
    <tr>
      <td width="11" height="38">&nbsp;</td>
      <td width="243">&nbsp;<span class="STYLE91">恭喜您,注册成功 </span><span class="STYLE92">！！！</span></td>
      <td width="16">&nbsp;</td>
    </tr>
  </table>
  </div>
<span class="STYLE49 STYLE85">
<div align="center">
  <table width="422">
    <tr><td width="473" height="119">
      <p>
        <%

session.setAttribute("loginname",name1);
String touicon="INSERT INTO reply (author,fatimes,jifen,jibie,tou,nichen) VALUES('"+name1+"',0,100,'会员','"+tou1+"','"+ni+"')";
stmt.executeUpdate(touicon);

String QQQ="INSERT INTO zhuti (author,QQ) VALUES('"+name1+"','"+qq+"')";
stmt.executeUpdate(QQQ);
//response.sendRedirect("bbs/index.jsp");
%></p>
            
        用户名 :<span class="STYLE91"><%=name1%> </span>       </p>
      <p>      密 码 :<span class="STYLE91"><%=pwda%></span></p>
      <p><img src="/qiyeweb/images/dl.gif" width="75" height="25" border="0">      </p>
      <p>请妥善保管好,以便更多用户能注册到自己喜欢的名字!
        
        <%
}
else
{
out.println("注册失败！可能用户名已注册!");
}%>
      </p></td></tr>
    </table>
  <%



// rs.close();
 stmt.close();
 con.close();
}
catch(SQLException e)
{
    out.println(e.toString());
}
catch(java.lang.NullPointerException De)
{
    out.println(De.toString());
}
 %>

