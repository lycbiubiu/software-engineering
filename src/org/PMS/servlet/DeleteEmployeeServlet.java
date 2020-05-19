package org.PMS.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PMS.dao.EmployeeBasicInfomationDao;

public class DeleteEmployeeServlet extends HttpServlet {
    public DeleteEmployeeServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		EmployeeBasicInfomationDao empDao = new EmployeeBasicInfomationDao();
		String eid = request.getParameter("eid");
		boolean result = empDao.deleteEmployeeByEid(eid);
		
		if(result){
			response.sendRedirect("QueryAllEmployeeServlet");
		}
		else{
			out.println("删除！"+eid);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
