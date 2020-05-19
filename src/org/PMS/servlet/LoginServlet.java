 package org.PMS.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PMS.dao.LoginDao;
import org.PMS.entity.AccountPassword;;

public class LoginServlet extends HttpServlet {
    public LoginServlet() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String eid = request.getParameter("eid");
		String pwd = request.getParameter("password");
		
		AccountPassword person = new AccountPassword(eid,pwd);
		
		int result = LoginDao.login(person);
		if(result>0){
			response.sendRedirect("QueryAllEmployeeServlet");
		}else if(result == 0){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("密码错误");
			response.sendRedirect("login.jsp");
		}else if(result==-1){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			response.sendRedirect("login.jsp");
		}else if(result==-3){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			response.sendRedirect("login.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
