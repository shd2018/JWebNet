<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%> 
<%@ page import="javax.servlet.*"%> 
<%@ page import="javax.servlet.http.*"%> 
<%@ page import="com.jspsmart.upload.*"%>
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>

<%Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;%>
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
				file.saveAs("/teacher/kejian/"+s_PicUrl);
				
			}
			//将文章信息保存到数据库中
			
 String gonghao=su.getRequest().getParameter("Username");
 
  // name1=new String(name1.getBytes("ISO-8859-1"),"GBK");
 
   
   String name=su.getRequest().getParameter("name");//课件名称
  //name=new String(name.getBytes("ISO-8859-1"),"gb2312");
  
  
		    String jianli=su.getRequest().getParameter("jianli");
   //jianli=new String(jianli.getBytes("ISO-8859-1"),"gb2312");
   
   jianli=jianli.replaceAll("'","\"");


 // 输出
StringBuffer Memo = new StringBuffer(jianli);
Memo = myTranslate(Memo);
   
   
           
java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
String time= dateFormat.format(new java.util.Date(System.currentTimeMillis()));

String strSQL="INSERT INTO kejian (gonghao, kejianname, kejianjieshao, kejianfilename,uploadtime) VALUES('"+gonghao+"','"+name+"','"+Memo+"','"+s_PicUrl+"','"+time+"')";

rs=stmt.executeQuery("select * from kejian where kejianfilename='"+s_PicUrl+"'");

if(!rs.next())
{
stmt.executeUpdate(strSQL);
//session.setAttribute("user",name1);
%>
     
   
     
    
      上传成功
        
<%
}
else
{
out.println("上传失败，已存在相同文件名!");
}
		}
		catch(Exception e)
		{
			out.println("<p align=center>您上传的文件格式不对，或者上传文件太大！</p>");
			out.println("<div align=center><input type=button name=btn3 value=返回 onClick='window.history.go(-1)'></div>");
			return;
		}
		
		
		

//session.setAttribute("user",name1);
%>