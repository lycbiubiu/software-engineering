package org.PMS.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PMS.dao.EmployeeBasicInfomationDao;
import org.PMS.entity.EmployeeBasicInfomation;
import org.PMS.util.DBUtil;


public class QueryAllEmployeeServlet extends HttpServlet {
    public QueryAllEmployeeServlet() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		int pageno = request.getParameter("pageno") == null? 1 :Integer.parseInt(request.getParameter("pageno"));//获取页码
		int totalsize = 0;//总查询条数
		int pagecount = 0;//总页数
		int pagesize = 20;//一页数据数量
		
		EmployeeBasicInfomationDao empDao = new EmployeeBasicInfomationDao();
		List<EmployeeBasicInfomation> emps = empDao.queryAllEmployees(pageno,pagesize); 

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			conn = DBUtil.getConn();
			String sql = "select count(*) totalsize from employee_basic_information";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				totalsize = rs.getInt("totalsize");
			}
			
			pagecount = totalsize%pagesize==0 ? totalsize/pagesize : totalsize/pagesize+1;
			request.setAttribute("pageno",pageno);
			request.setAttribute("pagecount",pagecount);
			request.setAttribute("totalsize",totalsize);
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			DBUtil.closeAll(rs, pstmt, conn);
		}
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(emps!=null){
			request.setAttribute("emps", emps);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else{
			out.println("not found!");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
