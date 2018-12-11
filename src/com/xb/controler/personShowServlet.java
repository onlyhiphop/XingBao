/*
 * 
 * 用于修改用户的个人信息
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
 * Servlet implementation class personShowServlet
 */
@WebServlet("/personShowServlet")
public class personShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public personShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String username=request.getParameter("username");
		String sex=request.getParameter("sex");
		String email=request.getParameter("email");
		String QQ=request.getParameter("QQ");
		String iphone=request.getParameter("iphone");
		
		UserBean ub=(UserBean)request.getSession().getAttribute("UserBean");
		int userId=ub.getUserId();
		UserCl uc=new UserCl();
		ub=uc.UpdateUserInfor(userId, username, "null", sex, email, QQ, iphone);
		request.getSession().setAttribute("UserBean", ub);
		request.getRequestDispatcher("suc.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
