package com.xb.model;

import java.sql.*;

public class UserCl {
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
	
	/*
	 * 用户注册
	 */
	public void userSet(String userName,String password){
		try {
			ct=new Conne().getConn();
			stm=ct.createStatement();
			stm.executeUpdate("insert into personData (username,password) values('"+userName+"','"+password+"')");          
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			this.close();
		}
	}
	
	/*
	 * 用户验证登入
	 */
	public boolean CheckUser(String userName,String password){
		boolean b=false;
		
		try {
			
			ct=new Conne().getConn();
			stm=ct.createStatement();
			rs=stm.executeQuery("select password from personData where username='"+userName+"'");
			
			if (rs.next()) {
				//如果 rs.next()存在的话 说明用户名存在
				if (rs.getString(1).equals(password)) {
					b=true;
				}
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			this.close();
		}
		return b;
	}
	/*
	 * 获取用户的信息
	 */
	public UserBean getUserInfor(String username){
		UserBean ub=new UserBean();
		try {
			ct=new Conne().getConn();
			stm=ct.createStatement();
			rs=stm.executeQuery("select * from personData where username='"+username+"'");
			while(rs.next()){
				ub.setUserId(rs.getInt(1));
				ub.setUsername(rs.getString(2));
				ub.setPassword(rs.getString(3));
				ub.setHeadImg(rs.getString(4));
				ub.setSex(rs.getString(5));
				ub.setQQ(rs.getString(6));
				ub.setEmail(rs.getString(7));
				ub.setIphone(rs.getString(8));
				ub.setYuer(rs.getInt(9));
				ub.setYouhui(rs.getInt(10));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			this.close();
		}
		return ub;
	}
	/*
	 * 检验是否用户名已经存在
	 */
	public boolean CheckName(String userName) {
		boolean b=false;
		
		try {
			ct=new Conne().getConn();
			stm=ct.createStatement();
			rs=stm.executeQuery("select password from personData where username='"+userName+"'");
			
			if (rs.next()) {
				b=true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return b;
	}
	/*
	 * 添加完善用户信息
	 */
	public UserBean UpdateUserInfor(int userId,String username,String headImg,String sex,String email,String QQ,String iphone){
		UserBean ub=new UserBean();
		try {
			ct=new Conne().getConn();
			stm=ct.createStatement();
			stm.executeUpdate("update personData set username='"+username+"',headImg='"+headImg+"',sex='"+sex+"',email='"+email+"',QQ='"+QQ+"',iphone='"+iphone+"' where userId='"+userId+"'");
			ub.setUserId(userId);
			ub.setUsername(username);
			ub.setHeadImg(headImg);
			ub.setSex(sex);
			ub.setEmail(email);
			ub.setQQ(QQ);
			ub.setIphone(iphone);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			this.close();
		}
		return ub;
	}
	
	/*
	 * 修改密码
	 */
	public void UpPassWord(int userId,String password_x) {
		try {
			ct=new Conne().getConn();
			stm=ct.createStatement();
			stm.executeUpdate("update personData set password='"+password_x+"' where userId='"+userId+"'");
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			this.close();
		}
	}
}




