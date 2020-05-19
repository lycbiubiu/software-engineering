package org.PMS.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PMS.dao.EmployeeBasicInfomationDao;
import org.PMS.entity.EmployeeBasicInfomation;

public class ShowEmpInfomationServlet extends HttpServlet {
    public ShowEmpInfomationServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		EmployeeBasicInfomationDao empDao = new EmployeeBasicInfomationDao();
		String eid = request.getParameter("eid");
		EmployeeBasicInfomation emp = empDao.queryEmployeeByEid(eid);
		
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		if(emp!=null){
			request.setAttribute("emp", emp);
			request.getRequestDispatcher("showEmpInfo.jsp").forward(request, response);
		}else{
			out.println("未找到结果");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
