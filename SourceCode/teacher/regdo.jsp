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
			su.setAllowedFilesList("jpg,gif,bmp,JPG,GIF,BMP");
			// �ϴ��ļ�
			su.upload();
			
			
	
			String s_PicUrl="00000000000000.gif";		
			//�ж��Ƿ��и����ϴ�
			com.jspsmart.upload.File file = su.getFiles().getFile(0);
			
			if (!file.isMissing())
			{
				String s_Pic=file.getFileName();	
				//�������� ��ǰʱ��+������չ�� ��Ϊ�ļ�������		
				java.text.SimpleDateFormat dateFormatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
				String s_NowTime = dateFormatter.format(new java.util.Date());
				s_PicUrl = s_NowTime+"."+ file.getFileExt();
				file.saveAs("/teacher/teacherphoto/"+s_PicUrl);
				
			}
			//��������Ϣ���浽���ݿ���
			
 String gonghao=su.getRequest().getParameter("Username");
 
  // name1=new String(name1.getBytes("ISO-8859-1"),"GBK");
  String pass=su.getRequest().getParameter("Password");
   //pwda=new String(pwda.getBytes("ISO-8859-1"),"GBK");
   
   String name=su.getRequest().getParameter("name");
  //name=new String(name.getBytes("ISO-8859-1"),"gb2312");
   String sex=su.getRequest().getParameter("Sex");
  // sex=new String(sex.getBytes("ISO-8859-1"),"gb2312");
   
  String chushen=su.getRequest().getParameter("chushen");
   // sheng1=new String(sheng1.getBytes("ISO-8859-1"),"GBK");
     String xuewei=su.getRequest().getParameter("xuewei");
  // xuewei=new String(xuewei.getBytes("ISO-8859-1"),"gb2312");
     String zhicheng=su.getRequest().getParameter("zhicheng");
  // zhicheng=new String(zhicheng.getBytes("ISO-8859-1"),"gb2312");
   
       String teshu=su.getRequest().getParameter("teshu");
   //teshu=new String(teshu.getBytes("ISO-8859-1"),"gb2312");
         
  String email=su.getRequest().getParameter("Email");
       String tel=su.getRequest().getParameter("Tel");
 //  teshu=new String(teshu.getBytes("ISO-8859-1"),"gb2312");
         String shouji=su.getRequest().getParameter("shouji");
            // shouji=new String(shouji.getBytes("ISO-8859-1"),"gb2312");
		    String jianli=su.getRequest().getParameter("jianli");
   //jianli=new String(jianli.getBytes("ISO-8859-1"),"gb2312");
   
   jianli=jianli.replaceAll("'","\"");


 // ���
StringBuffer Memo = new StringBuffer(jianli);
Memo = myTranslate(Memo);
   
   
           
java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
String time= dateFormat.format(new java.util.Date(System.currentTimeMillis()));


String strSQL="INSERT INTO teacher (gonghao, pass, name, sex,birthday,xuewei,zhicheng,teshu,email,tel,shouji,jianli,photo,regtime) VALUES('"+gonghao+"','"+pass+"','"+name+"','"+sex+"','"+chushen+"','"+xuewei+"','"+zhicheng+"','"+teshu+"','"+email+"','"+tel+"','"+shouji+"','"+Memo+"','"+s_PicUrl+"','"+time+"')";

rs=stmt.executeQuery("select * from teacher where gonghao='"+gonghao+"'");

if(!rs.next())
{
stmt.executeUpdate(strSQL);session.setAttribute("gonghao",gonghao);

out.println("ע��ɹ�!");
}




else
{
out.println("ע��ʧ�ܣ������û�����ע��!");
}

		}
		catch(Exception e)
		{
			out.println("<p align=center>���ϴ����ļ���ʽ���ԣ������ϴ��ļ�̫��</p>");
			out.println("<div align=center><input type=button name=btn3 value=���� onClick='window.history.go(-1)'></div>");
			return;
		}
		
		
		

//session.setAttribute("user",name1);
%><div align="center">
  <table width="355" height="42">
    <tr>
      <th width="38" height="36" scope="col">01</th>
      <th width="147" scope="col">---��д�û���Ϣ</th>
      <th width="41" scope="col">02</th>
      <th width="101" scope="col">---ע��ɹ�</th>
    </tr>
  </table>
  <table width="286">
    <tr>
      <td width="11" height="38">&nbsp;</td>
      <td width="243">&nbsp;<span class="STYLE91">��ϲ��,ע��ɹ� </span><span class="STYLE92">������</span></td>
      <td width="16">&nbsp;</td>
    </tr>
  </table>
  </div>
<span class="STYLE49 STYLE85">
<div align="center">
  <table width="422">
    <tr><td width="473" height="119">
     
      <p>�����Ʊ��ܺ�,�Ա�����û���ע�ᵽ�Լ�ϲ��������!
        

      </p></td></tr>
</table>
 

<a href="/">����</a>