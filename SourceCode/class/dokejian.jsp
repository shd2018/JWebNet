<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
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
//String kejian=(String)session.getAttribute("kejian");
String xuehao=(String)session.getAttribute("xuehao");


 String question=request.getParameter("question");//问题名称
 
  question=new String(question.getBytes("ISO-8859-1"),"gb2312");
 
 String jieshao=request.getParameter("jieshao");
   jieshao=new String(jieshao.getBytes("ISO-8859-1"),"gb2312");
   
   jieshao=jieshao.replaceAll("'","\"");


 // 输出
StringBuffer Memo = new StringBuffer(jieshao);
Memo = myTranslate(Memo);
   
   
           
java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
String time= dateFormat.format(new java.util.Date(System.currentTimeMillis()));


String strSQL="INSERT INTO question (xuehao,question,questionjieshao,dotime) VALUES('"+xuehao+"','"+question+"','"+Memo+"','"+time+"')";

rs=stmt.executeQuery("select * from question where question='"+question+"'");

if(!rs.next())
{
stmt.executeUpdate(strSQL);
//session.setAttribute("user",name1);
%>
     
   
     
    
      提问成功！请耐心等待老师的解答
        
<%
}
%>
      </p></td></tr>
</table>
 

<a href="javascript:history.back()">返回</a>