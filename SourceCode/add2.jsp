<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<%@ page import="java.io.UnsupportedEncodingException"%>
  <%@ include file="conn.jsp"%>
  
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
  
<%request.setCharacterEncoding("gb2312");
 
//response.setContentType("text/html;charset=gb2312");

String zt,username,qq,email,sex,tx,nr,zt1,username1,qq1,sex1,tx1,nr1;
	zt1=request.getParameter("zt");
	//zt=(new String(zt1.getBytes("iso-8859-1"),"gb2312"));
	
	username1=request.getParameter("username");
	//username=(new String(username1.getBytes("iso-8859-1"),"gb2312"));
	
	qq1=request.getParameter("qq");
	//qq=(new String(qq1.getBytes("iso-8859-1"),"gb2312"));
	

    email=request.getParameter("email");

	
	sex1=request.getParameter("sex");
	//sex=(new String(sex1.getBytes("iso-8859-1"),"gb2312"));
	
	tx1=request.getParameter("tx");
	//tx=(new String(tx1.getBytes("iso-8859-1"),"gb2312"));
	
	nr1=request.getParameter("nr");
	nr=(new String(nr1.getBytes("iso-8859-1"),"gb2312"));
	nr=nr1.replaceAll("\n","<br>");
	
	//nr=nr1.replaceAll("' '","&nbsp;");
	StringBuffer Memo = new StringBuffer(nr);
Memo = myTranslate(Memo);

	
	
if(username1.length()!=0&&nr.length()!=0){
	try{
Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
String sql;
java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd-hh-mm-ss");
String timeq= dateFormat.format(new java.util.Date(System.currentTimeMillis()));
String pho =(String)session.getAttribute("photo");
sql="insert into a (zt,username,qq,email,sex,tx,nr,sj,photo) values ('"+zt1+"','"+username1+"','"+qq1+"','"+email+"','"+sex1+"','"+tx1+"','"+nr+"','"+timeq+"','"+pho+"')";

if((String)session.getAttribute("xuehao")=="" || (String)session.getAttribute("gonghao")==null|| (String)session.getAttribute("gonghao")=="" )
{out.print("<script>alert('��δע����½!�뷵����ҳע����½!');</script>");
response.setHeader("refresh","1;URL=/") ;

}else{
stmt.executeUpdate(sql);

stmt.close();
con.close();
out.print("<script language='javascript'>alert('���Գɹ�');window.location.href='index.jsp';</script>");}
}catch(Exception e){
out.print("��Ϣ����");
}
}
else{
out.print("<center>�û���Ϊ�ջ�û����������"+"<br><a href=javascript:history.go(-1)>����</a></center>");
}
%>