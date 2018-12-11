package com.xb.model;

import java.sql.*;

public class Conne {

	private String url="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private String qd="jdbc:sqlserver://localhost:1433;databaseName=UserManage";
	private String user="sa";
	private String password="12345";
	
	private Connection ct=null;
	
	public Connection getConn(){
		
		try {
			Class.forName(url);
			ct=DriverManager.getConnection(qd,user,password);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return ct;
	}
	
}
