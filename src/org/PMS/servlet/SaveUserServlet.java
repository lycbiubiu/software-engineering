package org.PMS.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PMS.dao.AccountDao;
import org.PMS.entity.AccountPassword;

public class SaveUserServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eid = request.getParameter("eid");                 
		String password = request.getParameter("password");                    
		String email = request.getParameter("email");                    
		String phonenumber = request.getParameter("phonenumber");  

		AccountPassword user = new AccountPassword(eid,password,email,phonenumber);
		
		int count = AccountDao.updateAccount(user);
		
		doGet(request, response);
	}

}
