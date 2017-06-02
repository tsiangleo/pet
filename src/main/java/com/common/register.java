
package com.common;

import java.sql.*;


public class register {
	//用户ID
	private String userID;  
	//昵称
	private String userName;  
	//密码
	private String userPwd;
	//email
	private String userEmail;  
	//用户等级 刚注册为0级
	private int userLevel=0;
	//用户留言
	private String userSay;
	
	public register()
	{
	    
	}
	
	public void setUserID(String id)
	{
		userID=id;
	}
	
	public void setUserName(String name)
	{
		userName=name;
	}
	
	public void setUserPwd(String pwd)
	{
		userPwd=pwd;
	}
	
	public void setUserEmail(String email)
	{
		userEmail=email;
	}
	
	public void setUserSay(String say)
	{
		userSay=say;
	}
	
	public int userRegister()
	{
	    try
	    {
	    	dbcon dbc=new dbcon();
	    	ResultSet rs=dbc.executeQuery("select * from userinfo where userid='"+userID+"'");
	    	int i=0;
	    	while(rs.next())
	    	{
	    		i++;
	    	}
	    	System.out.println(String.valueOf(i));
	    	if (i>0 )
	    		return -1;//该用户ID已经存在
	    	dbc.executeUpdate("insert into userinfo values('"
	    			        +userID+"','"
							+userPwd+"','"
							+userName+"','"
							+userEmail+"',"
							+userLevel+",'"
							+userSay+"',0)");
	        return 0;
	    }
	    catch(Exception e)
	    {
	        System.err.println(e.getMessage());
	        System.err.println("注册失败！");
	        return -2;
	    }
	}


}
