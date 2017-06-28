<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>师生交流平台</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><body>
<div align="center">
  <table width="658">
    <tr>
      <td width="281">老师模块
        <form name="form1" method="post" action="teacher/logindo.jsp">
          <div align="left">
            <table width="256" border="1">
              <tr>
                <td width="34">工号</td>
                <%String gonghao=(String)session.getAttribute("gonghao");if(gonghao==null){gonghao="";}%>
                <td width="206"><input name="gonghao" type="text" id="gonghao" value="<%=gonghao%>"></td>
              </tr>
              <tr>
                <td>密码</td>
                <td><input name="pass" type="password" id="pass"></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" name="Submit2" value="login">
                  &nbsp;
                  <input type="button" name="Submit2" value="reg" onClick="window.open('teacher/teacherreg.jsp')">
                  &nbsp;
                  <input type="button" name="Submit23" value="找回密码" onClick="window.open('teacher/forget.html')"></td>
              </tr>
            </table>
          </div>
        </form></td>
      <td width="365">学生模块
        <form name="form1" method="post" action="class/logindo.jsp">
          <div align="left">
            <table width="278" border="1">
              <tr>
                <td width="53">学号</td>
                <%String xuehao=(String)session.getAttribute("xuehao");if(xuehao==null){xuehao="";}%>
                <td width="230"><input name="xuehao" type="text" id="xuehao" value="<%=xuehao%>"></td>
              </tr>
              <tr>
                <td>密码</td>
                <td><input name="pass2" type="password" id="pass2"></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" name="Submit3" value="login">
                  &nbsp;
                  <input type="button" name="Submit22" value="reg" onClick="window.open('class/classreg.jsp')">
                  <input type="button" name="Submit232" value="找回密码" onClick="window.open('class/forget.html')"></td>
              </tr>
            </table>
          </div>
        </form></td>
    </tr>
  </table></div>
  <%
try{
String name;
name= (String) session.getValue("name");


	%> 
  
<%if(name!=null){%>

<center><span class='STYLE2'>欢迎您!<%=name%></span><a href=loginout.jsp><span class='STYLE2'>退出登陆</span></a></center>
	
	<%}else{
	
	%>
	<center><a href="adminlogin.jsp">管理员登陆</a>
	</center>
	<%
	}


Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs=stmt.executeQuery("select * from a order by sj desc");
int i=1;
int pagesize=8;
int pagecount;
int rowcount;
int gopage;
rs.last(); 
rowcount = rs.getRow();
pagecount=(rowcount+pagesize-1)/pagesize;
if(request.getParameter("page")!=null){
gopage = java.lang.Integer.parseInt(request.getParameter("page"));
}else{//否则
gopage=1;
}
rs.absolute((gopage-1)*pagesize+1);
if(rowcount>0){
while(i<=pagesize && !rs.isAfterLast()){
%>
<table width="771" border="2" align="center" cellspacing="1" bgcolor="#FFFF00">
  <tr>
    <td width="200" height="178" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0">
      <tr>
        <td height="82"align="center"><img width="96" height="82" src=/teacher/teacherphoto/<%=rs.getString(10)%>>		</td>
      </tr>
      <tr>
        <td height="25"><div align="center">
          <%
		out.print(rs.getString("username")+"&nbsp;[<font color='#6666ff'>"+rs.getString("sex")+"</font>]");
		%>
        </div></td>
      </tr>
      <tr>
        <td height="25"><div align="center">
          <%
		out.print(rs.getString("sj"));
		%>
        </div></td>
      </tr>
      <tr>
        <td height="25"><div align="center"><img src="images/email.gif" width="16" height="17"  alt="<%out.print(rs.getString("email"));%>"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href='tencent://message/?uin=<%out.print(rs.getString("qq"));%>"&Site=im.qq.com&Menu=yes'><img src="images/QQ.gif" width="24" height="24" alt="点击与对方建立QQ临时会话"border=0/></a></div></td>
      </tr>
      
    </table></td>
    <td bgcolor="#FFFFFF"><div align="center">
      <br />
      <table width="90%" height="20" border="0" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
          <td bgcolor="#FFFFFF"><div align="left">主题：
<%
		  out.print(rs.getString("zt"));
		  %>          
          </div></td>
        </tr>
      </table>
      <br />
      <table width="90%" height="127" border="0" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
          <td bgcolor="#FFFFFF">
		    <div align="left"><img src=<%out.print(rs.getString("tx"));%>><br><br>
		      <%
		  out.print(rs.getString("nr"));
		  %>  
	          </div></td>
        </tr>
      </table>
      <br />
      <table width="90%" height="20" border="0" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
          <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0">
            <tr>
              <td width="50%"><span class="STYLE2">在此留言</span></td>
              <td>		  <%
		  if(name!=null && "admin".equals(name)){
		  out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target='_blank' href=del.jsp?id="+rs.getInt("id")+"><font color='#666666'>删除</font></a>");
		  }
		  %></td>
              <td width="15%" class="STYLE3"><div align="center"><a href="#top">#TOP </a><a href="#foot">#BOT</a><a href="add.jsp" target="_blank"><img src="images/hu.gif" alt="留言" width="50" height="17" border="0" /></a></div></td>
            </tr>
          </table>		  </td>
        </tr>
      </table>
      <br>
    </div></td>
  </tr>
</table><br>
<%if(rs.next()){
i++;}else{break;}
}}
	rs.close();
	stmt.close();						
%>
<table width="771" height="22" border="0" align="center" cellspacing="1" bgcolor="#999999">
  <tr>
    <td height="20" align="center" bgcolor="#CCCCCC" style="WORD-BREAK: break-all; WORD-WRAP: break-word">
共<%=pagecount%>页&nbsp;&nbsp;当前第<%=gopage%>页
      <% 
for(int j=1;j<=pagecount;j++){
out.print("&nbsp;&nbsp;<a href='index.jsp?page="+j+"'>"+j+"</a>");
}
}catch(Exception e){
out.print("<center>错误页码或无记录</center>");

}
%>
      &nbsp;&nbsp;&nbsp;&nbsp; 
      <a href="add.jsp">留 言</a>
      <div id="Layer1">
  <form id="form2" name="form2" method="post" action="index.jsp" >
        <label>
        <input name="page" type="text" class="dl2" id="page" size="3" />
        </label>
                    <label>
                    <input name="Submit" type="submit" class="dl2" value="GO" />
              </label>
</form>  </div>
</td>
  </tr>
</table>

<%@ include file="foot.jsp" %>

</BODY></HTML>