<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html><head><title>upFile</title></head> 
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<%@ page import="java.io.*"%> 
<%@ page import="java.util.*"%> 
<%@ page import="javax.servlet.*"%> 
<%@ page import="javax.servlet.http.*"%> 
<jsp:useBean id="conn" class="yang.conn.conn" scope="page"/>
<%

Connection con=conn.getConn();
Statement stmt=con.createStatement();
ResultSet rs;

%>




<% 
//���������ļ�������ֽ� 
int MAX_SIZE = 1100 * 1100; 
// ������·���ı������ 
String rootPath; 
//�����ļ������� 
DataInputStream in = null; 
FileOutputStream fileOut = null; 
//ȡ�ÿͻ��˵������ַ 
String remoteAddr = request.getRemoteAddr(); 

//��÷����������� 
String serverName = request.getServerName(); 
//out.print("serverName="+serverName+"<br>"); 

//ȡ��jsp�ļ���������ַ�ĵ�ַ 
//out.print("request.getServletPath()="+request.getServletPath()+"<br>"); 

//ȡ�û���������ľ��Ե�ַ 
String realPath = request.getRealPath(serverName); 
//out.println("request.getRealPath(serverName)="+realPath+"<br>"); 

realPath = realPath.substring(0,realPath.lastIndexOf("\\")); 
//out.print("realPath="+realPath+"<br>"); 

//�����ļ��ı���Ŀ¼
rootPath = realPath + "\\class\\classphoto\\"; 
//out.println("�ļ��ı���Ŀ¼="+rootPath); 

//ȡ�ÿͻ����ϴ����������� 
String contentType = request.getContentType(); 
//out.println("<p>�ͻ����ϴ����������� = " + contentType + "</p>"); 
try{ 
if(contentType.indexOf("multipart/form-data") >= 0){ 
//�����ϴ������� 
in = new DataInputStream(request.getInputStream()); 
int formDataLength = request.getContentLength(); 
if(formDataLength > MAX_SIZE){ 
out.println("<P>�ϴ����ļ��ֽ��������Գ���" + MAX_SIZE + "</p>"); 
return; 
} 
//�����ϴ��ļ������� 
byte dataBytes[] = new byte[formDataLength]; 
int byteRead = 0; 
int totalBytesRead = 0; 
//�ϴ������ݱ�����byte���� 
while(totalBytesRead < formDataLength){ 
byteRead = in.read(dataBytes,totalBytesRead,formDataLength); 
totalBytesRead += byteRead; 
} 
//����byte���鴴���ַ��� 
String file = new String(dataBytes); 
//out.println(file); 
//ȡ���ϴ������ݵ��ļ��� 
String saveFile = file.substring(file.indexOf("filename=\"") + 10); 
saveFile = saveFile.substring(0,saveFile.indexOf("\n")); 
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\"")); 
int lastIndex = contentType.lastIndexOf("="); 
//ȡ�����ݵķָ��ַ��� 
String boundary = contentType.substring(lastIndex + 1,contentType.length()); 
//��������·�����ļ��� 
String fileName = rootPath + saveFile; 


rs=stmt.executeQuery("select * from class where photo='"+saveFile+"'");

if(!rs.next())
{

session.setAttribute("photo",saveFile);

int pos; 
pos = file.indexOf("filename=\""); 
pos = file.indexOf("\n",pos) + 1; 
pos = file.indexOf("\n",pos) + 1; 
pos = file.indexOf("\n",pos) + 1; 
int boundaryLocation = file.indexOf(boundary,pos) - 4; 
//out.println(boundaryLocation); 
//ȡ���ļ����ݵĿ�ʼ��λ�� 
int startPos = ((file.substring(0,pos)).getBytes()).length; 
//out.println(startPos); 
//ȡ���ļ����ݵĽ�����λ�� 
int endPos = ((file.substring(0,boundaryLocation)).getBytes()).length; 
//out.println(endPos); 
//��������ļ��Ƿ���� 
File checkFile = new File(fileName); 
if(checkFile.exists()){ 
//out.println("<p>" + saveFile + "�ļ��Ѿ�����.</p>"); 
} 
//��������ļ���Ŀ¼�Ƿ���� 
File fileDir = new File(rootPath); 
if(!fileDir.exists()){ 
fileDir.mkdirs(); 
} 
//�����ļ���д���� 
fileOut = new FileOutputStream(fileName); 
//�����ļ������� 
fileOut.write(dataBytes,startPos,(endPos - startPos)); 
fileOut.close(); 
response.sendRedirect("classreg.jsp");
//out.println("<P>" + saveFile + "�ļ��ɹ�����.</p>"); }
}else{ 
String content = request.getContentType(); 
out.println("<p>�ϴ�����Ƭ�ļ����Ѵ��ڣ��������Ƭ�ļ�����Ӣ�ģ������ϴ�</p>"); 
} }
}catch(Exception ex){ 
throw new ServletException(ex.getMessage()); 
} 
%> 
</body> 
</html> 

