package org.PMS.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PMS.dao.EmployeeBasicInfomationDao;
import org.PMS.entity.EmployeeBasicInfomation;

public class AddEmployeeServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String 	eid = request.getParameter("eid");
		String 	branch = request.getParameter("branch");
		String  birthdate= request.getParameter("birthdate");
		String 	nation = request.getParameter("nation");
		String 	name = request.getParameter("name");
		String  sex= request.getParameter("sex");
		String  standardOfCulture= request.getParameter("standardOfCulture");
		String  politicalStatus= request.getParameter("politicalStatus");
		String  workingHours= request.getParameter("workingHours");
		String  contractTerm= request.getParameter("contractTerm");
		String  typeOfWork= request.getParameter("typeOfWork");
		String  drivingLicense= request.getParameter("drivingLicense");
		String  skillWage= request.getParameter("skillWage");
		String  fileWage= request.getParameter("fileWage");
		String  jobWage= request.getParameter("jobWage");
		String  totalWage= request.getParameter("totalWage");
		String  homeAddress= request.getParameter("homeAddress");
		String  postalcode= request.getParameter("postalcode");
		EmployeeBasicInfomation emp = new EmployeeBasicInfomation(
				eid,branch,birthdate,nation,name,sex,standardOfCulture,
				politicalStatus,workingHours,contractTerm,typeOfWork,drivingLicense,
				skillWage,fileWage,jobWage,totalWage,homeAddress,postalcode
				);
		
		EmployeeBasicInfomationDao empDao = new EmployeeBasicInfomationDao();
		boolean result = empDao.addEmployeeByEid(emp); 
		
		if(result){
			request.getRequestDispatcher("ShowEmpInfomationServlet").forward(request, response);
		}else{
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.println("添加失败");
		}
	}

}
