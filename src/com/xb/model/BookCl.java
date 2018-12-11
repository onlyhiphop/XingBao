package com.xb.model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class BookCl {
	private Statement stm=null; 
	private ResultSet rs=null;
	private Connection ct=null;
	
	/*
	 * 关闭资源
	 */
	public void close(){
		try {
			if (rs!=null) {
				rs.close();
				rs=null;
			}
			if (stm!=null) {
				stm.close();
				stm=null;
			}
			if (ct!=null) {
				ct.close();
				ct=null;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	//获得书的信息
	public BookBean getBookBean(String bookId){
		BookBean bookB=new BookBean();		
		try {
			ct=new Conne().getConn();
			stm=ct.createStatement();
			rs=stm.executeQuery("select * from book where bookId="+bookId+"");
			
			while(rs.next()){
				bookB.setBookId(rs.getInt(1));
				bookB.setPhoto(rs.getString(2));
				bookB.setBookname(rs.getString(3));
				bookB.setAuthor(rs.getString(4));
				bookB.setIntroduce(rs.getString(5));
				bookB.setVotes(rs.getInt(6));
				bookB.setFlower(rs.getInt(7));
				bookB.setWordcount(rs.getString(8));
				bookB.setRenqi(rs.getInt(9));
				bookB.setShumi(rs.getInt(10));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			this.close();
		}
		
		
		return bookB;
	}
	
	//获得书的简介
	public String readFile(String fileName){
		String string="";
		
		File file=new File(fileName);
		
		if (file.isFile()&&file.exists()) {
			try { 
					InputStreamReader read=new InputStreamReader(new FileInputStream(file),"gbk");
					BufferedReader reader=new BufferedReader(read);
					String string2;
					while((string2=reader.readLine())!=null){
						string+=string2;
					}
					read.close();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			  } 

		return string;
	}
	
	
}





