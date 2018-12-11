/*
 * 用于修改用户的密码
 */
package com.xb.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xb.model.UserBean;
import com.xb.model.UserCl;

/**
 * Servlet implementation class UpPassWordServlet
 */
@WebServlet("/UpPassWordServlet")
public class UpPassWordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpPassWordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String password=request.getParameter("password_y");
		String password_x=request.getParameter("password_x");
		
		UserBean ub=(UserBean)request.getSession().getAttribute("UserBean");
		int userId=ub.getUserId();
		String username=ub.getUsername();
//		System.out.println(userId+username);
//		System.out.println(password);
//		System.out.println(password_x);
		UserCl uc=new UserCl();
		boolean b=uc.CheckUser(username, password);
//		System.out.println(b);
		if (b) {
			uc.UpPassWord(userId, password_x);
			request.getRequestDispatcher("suc.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("err.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
