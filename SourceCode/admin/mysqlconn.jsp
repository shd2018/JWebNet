
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%

 Connection con;
 Statement st;
 ResultSet rs;
String driver="org.gjt.mm.mysql.Driver";
		
String url="jdbc:mysql://localhost:3306/qiye";

String user="root";
String pwd="111";
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
		} 
		catch (ClassNotFoundException e)
		 {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("-----------------");
		}
		try {
			con=DriverManager.getConnection(url,user,pwd);
			st=con.createStatement();
			
			rs=st.executeQuery("Select * from user");//st.executeUpdate("drop database qiye");
			if(rs.next())out.println(rs.getString(2));out.println("数据库连接成功!");
		}
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("++++++++++++++");
		}

%>