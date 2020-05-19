package org.PMS.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PMS.dao.JobTransferDao;
import org.PMS.entity.JobTransfer;

/**
 * Servlet implementation class SelectAllJobTransfer
 */
public class SelectAllJobTransferServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 List<JobTransfer> jtlist = JobTransferDao.selectAllJobTransfer();
		 
		 request.setAttribute("jtlist", jtlist);
		 //request.getRequestDispatcher("showEmpInfo.jsp").forward(request, response);
	}

}
