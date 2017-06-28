<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%> 
<%@ page import="javax.servlet.*"%> 
<%@ page import="javax.servlet.http.*"%> 
<%@ page import="com.jspsmart.upload.*"%>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>
<%!  //先声明
char[] c={' '};
String szSpace=new String(c);
StringBuffer myTranslate(StringBuffer sour){
   for(int i=0;i<sour.length();i++){
      if(sour.substring(i,i+1).equals(szSpace)){ //替换空格
        sour.delete(i,i+1);
     sour.insert(i,"&nbsp;");
  }
   if(sour.substring(i,i+1).equals("\n")){  //替换换行
        sour.delete(i,i+1);
     sour.insert(i,"<br>");
  }                
 }
 return sour;
}%>
<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;


try{
			// 新建一个SmartUpload对象
			SmartUpload su = new SmartUpload();
			// 上传初始化
			su.initialize(pageContext);
			//设定上传限制
			//限制每个上传文件的最大长度。
			su.setMaxFileSize(1000000*8);
			//设定允许上传的文件（通过扩展名限制）
			su.setAllowedFilesList("jpg,gif,bmp,JPG,GIF,BMP,rar,RAR,EXE,exe,ZIP,zip,MP3,mp3");
			// 上传文件
			su.upload();
			
			
	
			String s_PicUrl="0.gif";		
			//判断是否有附件上传
			com.jspsmart.upload.File file = su.getFiles().getFile(0);
			
			if (!file.isMissing())
			{
				String s_Pic=file.getFileName();	
				//将附件以 当前时间+附件扩展名 作为文件名保存		
				java.text.SimpleDateFormat dateFormatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
				String s_NowTime = dateFormatter.format(new java.util.Date());
				s_PicUrl = s_NowTime+"."+ file.getFileExt();
				file.saveAs("/teacher/teacherphoto/"+s_PicUrl);
				
			}
			
			
 String xuehao=su.getRequest().getParameter("Username");
 
  // name1=new String(name1.getBytes("ISO-8859-1"),"GBK");
  String pass=su.getRequest().getParameter("Password");
   //pwda=new String(pwda.getBytes("ISO-8859-1"),"GBK");
   
   String name=su.getRequest().getParameter("name");
  //name=new String(name.getBytes("ISO-8859-1"),"gb2312");
   String sex=su.getRequest().getParameter("Sex");
   //sex=new String(sex.getBytes("ISO-8859-1"),"gb2312");
   
  String chushen=su.getRequest().getParameter("chushen");
   // sheng1=new String(sheng1.getBytes("ISO-8859-1"),"GBK");
    
  String email=su.getRequest().getParameter("Email");
      String tel=su.getRequest().getParameter("Tel");
 //  teshu=new String(teshu.getBytes("ISO-8859-1"),"gb2312");
        
            // shouji=new String(shouji.getBytes("ISO-8859-1"),"gb2312");
		    String jianli=su.getRequest().getParameter("jianli");
   //jianli=new String(jianli.getBytes("ISO-8859-1"),"gb2312");
   
   jianli=jianli.replaceAll("'","\"");


 // 输出
StringBuffer Memo = new StringBuffer(jianli);
Memo = myTranslate(Memo);
   
   
           
java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
String time= dateFormat.format(new java.util.Date(System.currentTimeMillis()));


String strSQL="INSERT INTO class (xuehao, pass, name, sex,birthday,email,tel,jianli,photo,regtime) VALUES('"+xuehao+"','"+pass+"','"+name+"','"+sex+"','"+chushen+"','"+email+"','"+tel+"','"+Memo+"','"+s_PicUrl+"','"+time+"')";

rs=stmt.executeQuery("select * from class where xuehao='"+xuehao+"'");

if(!rs.next())
{
stmt.executeUpdate(strSQL);
//session.setAttribute("user",name1);
%><style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style><div align="center">
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

session.setAttribute("xuehao",xuehao);

//response.sendRedirect("bbs/index.jsp");
%></p>
            
      <p>&nbsp;</p>
      <p><a href="/">login</a> </p>
      <p>请妥善保管好,以便更多用户能注册到自己喜欢的名字!
        
        <%
}
else
{
out.println("注册失败！可能用户名已注册!");
}%>

<%

		}
		catch(Exception e)
		{
			out.println("<p align=center>您上传的文件格式不对，或者上传文件太大！</p>");
			out.println("<div align=center><input type=button name=btn3 value=返回 onClick='window.history.go(-1)'></div>");
			return;
		}
		
		
		

//session.setAttribute("user",name1);
%>
      </p></td></tr>
</table>
 

<a href="javascript:history.back()">返回</a>