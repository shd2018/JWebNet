package yang.conn;
import java.sql.*;
public class conn
{

	//���ݿ����Ӷ���
	Connection dbConn;   
	//�洢������Ϣ�ı���

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