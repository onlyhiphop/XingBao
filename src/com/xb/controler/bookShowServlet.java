package com.xb.controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xb.model.BookBean;
import com.xb.model.BookCl;

/**
 * Servlet implementation class bookShowServlet
 */
@WebServlet("/bookShowServlet")
public class bookShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html");
//		PrintWriter out=response.getWriter();
		
		String bookId=request.getParameter("bookId");
		//调用BookCl类去获得BookBean
		BookCl bookCl=new BookCl();
        BookBean bookBean=bookCl.getBookBean(bookId);
        
        String jianjie=bookCl.readFile("D:\\Myeclipse代码\\XingBao\\WebRoot\\text\\"+bookBean.getIntroduce()+"");
        request.setAttribute("jianjie", jianjie);
        //利用request传过去
        request.setAttribute("bookBean", bookBean);
        //跳转
        request.getRequestDispatcher("book.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
