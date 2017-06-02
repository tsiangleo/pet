package com.common;
import java.sql.*;

public class dbcon
{
	 /* String user = "root";
	  String password = "850922";
	  String driverName = "com.mysql.jdbc.Driver";
	  String connectURL = "jdbc:mysql://localhost:3306/exam";
	  
	  Statement stmt=null;
	*/  Connection conn=null;
	    ResultSet rs=null;
	    Statement stmt=null;
	
	public dbcon()
	{

		try{
			 Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			 conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:test","scott","Lq123");
             stmt=conn.createStatement();
		        
			/*Class.forName(driverName);
			conn=DriverManager.getConnection(connectURL,user,password);
			conn.setAutoCommit(true);
			stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
	*/		
		}
		catch(Exception e)
		{
			System.out.println("数据库连接错误"+e.getMessage());
		}
	}
	public ResultSet executeQuery(String sql)
	{
		try{
			rs=stmt.executeQuery(sql);
		}
		catch(SQLException ex)
		{
			System.out.println("数据库查询错误"+ex.getMessage());
		}
		return rs;
	}
	public int executeUpdate(String sql)
	{
		try{
			int i=stmt.executeUpdate(sql);
                     return i;
		   }
		catch(SQLException ex)
		{
			System.out.println("执行更新错误："+ex.getMessage());
			return -1;
		}
	}
	public Connection getcon()
	{
		return conn;
	}
}

