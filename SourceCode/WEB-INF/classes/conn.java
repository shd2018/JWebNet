package yang.conn;
import java.sql.*;
public class conn
{

	//数据库连接对象
	Connection dbConn;   
	//存储错误信息的变量

public Connection getConn()
	{   	
		try
		{ 
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
dbConn= DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=yang","sa","123456");			
		}
		catch(Exception ex)
		{	   		
			dbConn = null;
			   		
		}
		return dbConn;
	}


}