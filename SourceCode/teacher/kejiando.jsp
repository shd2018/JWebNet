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
<%!  //������
char[] c={' '};
String szSpace=new String(c);
StringBuffer myTranslate(StringBuffer sour){
   for(int i=0;i<sour.length();i++){
      if(sour.substring(i,i+1).equals(szSpace)){ //�滻�ո�
        sour.delete(i,i+1);
     sour.insert(i,"&nbsp;");
  }
   if(sour.substring(i,i+1).equals("\n")){  //�滻����
        sour.delete(i,i+1);
     sour.insert(i,"<br>");
  }                
 }
 return sour;
}%>

<% 
try{
			// �½�һ��SmartUpload����
			SmartUpload su = new SmartUpload();
			// �ϴ���ʼ��
			su.initialize(pageContext);
			//�趨�ϴ�����
			//����ÿ���ϴ��ļ�����󳤶ȡ�
			su.setMaxFileSize(1000000*8);
			//�趨�����ϴ����ļ���ͨ����չ�����ƣ�
			su.setAllowedFilesList("jpg,gif,bmp,JPG,GIF,BMP,rar,RAR,EXE,exe,ZIP,zip,MP3,mp3");
			// �ϴ��ļ�
			su.upload();
			
			
	
			String s_PicUrl="0.gif";		
			//�ж��Ƿ��и����ϴ�
			com.jspsmart.upload.File file = su.getFiles().getFile(0);
			
			if (!file.isMissing())
			{
				String s_Pic=file.getFileName();	
				//�������� ��ǰʱ��+������չ�� ��Ϊ�ļ�������		
				java.text.SimpleDateFormat dateFormatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
				String s_NowTime = dateFormatter.format(new java.util.Date());
				s_PicUrl = s_NowTime+"."+ file.getFileExt();
				file.saveAs("/teacher/kejian/"+s_PicUrl);
				
			}
			//��������Ϣ���浽���ݿ���
			
 String gonghao=su.getRequest().getParameter("Username");
 
  // name1=new String(name1.getBytes("ISO-8859-1"),"GBK");
 
   
   String name=su.getRequest().getParameter("name");//�μ�����
  //name=new String(name.getBytes("ISO-8859-1"),"gb2312");
  
  
		    String jianli=su.getRequest().getParameter("jianli");
   //jianli=new String(jianli.getBytes("ISO-8859-1"),"gb2312");
   
   jianli=jianli.replaceAll("'","\"");


 // ���
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
     
   
     
    
      �ϴ��ɹ�
        
<%
}
else
{
out.println("�ϴ�ʧ�ܣ��Ѵ�����ͬ�ļ���!");
}
		}
		catch(Exception e)
		{
			out.println("<p align=center>���ϴ����ļ���ʽ���ԣ������ϴ��ļ�̫��</p>");
			out.println("<div align=center><input type=button name=btn3 value=���� onClick='window.history.go(-1)'></div>");
			return;
		}
		
		
		

//session.setAttribute("user",name1);
%>