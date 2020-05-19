package org.PMS.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PMS.dao.JobTransferDao;
import org.PMS.entity.JobTransfer;
import org.PMS.util.ConstUtil;
import org.PMS.util.DateUtil;

public class AddJobTransferServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String 	tid = request.getParameter("tid");
		String 	eid = request.getParameter("eid");
		String 	name = request.getParameter("name");
		String 	sex = request.getParameter("sex");
		String 	job = request.getParameter("job");
		String 	wage = request.getParameter("wage");
		String  originUnit= request.getParameter("originUnit");
		String 	newUnit = request.getParameter("newUnit");
//		String 	transferDate = request.getParameter("transferDate");

//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String transferDate = sdf.format(new Date());
		
		String transferDate = DateUtil.format(new Date(), ConstUtil.DATE_FORMAT);
		
		JobTransfer jt = new JobTransfer(tid,eid,name,sex,job,wage,originUnit,newUnit,transferDate);
		
		int count = JobTransferDao.addJobTransfer(jt);

		if(count>0){
			//request.getRequestDispatcher("QueryEmployeeByEid").forward(request, response);
		}else{

			PrintWriter out = response.getWriter();
			out.write("<script>");
			out.write("alert('添加失败!')");
			//跳转【】
			out.write("lacation.href='index.jsp'");
			out.write("</script>");
		
		}
	}

}
