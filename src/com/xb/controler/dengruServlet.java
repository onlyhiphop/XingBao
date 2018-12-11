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
 * Servlet implementation class dengruServlet
 */
@WebServlet("/dengruServlet")
public class dengruServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dengruServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String s=request.getParameter("userName");
		String p=request.getParameter("psd");
		UserCl uc=new UserCl();
//		response.setCharacterEncoding("UTF-8");
		if (uc.CheckUser(s, p)) {
			UserBean ub=uc.getUserInfor(s);
			request.getSession().setAttribute("UserBean", ub);
			request.getRequestDispatcher("person_center.jsp").forward(request, response);
//			response.sendRedirect("welc.jsp");
		}else {
			request.getRequestDispatcher("dengru.jsp").forward(request, response);
//			response.sendRedirect("dengru.jsp");
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
