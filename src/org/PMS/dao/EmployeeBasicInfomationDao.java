package org.PMS.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.PMS.entity.EmployeeBasicInfomation;
import org.PMS.util.DBUtil;

public class EmployeeBasicInfomationDao {

	//查询职工是否存在
	public boolean isExist(String eid){
		return queryEmployeeByEid(eid)==null?false:true;
	}
	
	//根据职工号查询职工信息
	public EmployeeBasicInfomation queryEmployeeByEid(String eid1){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		EmployeeBasicInfomation emp = null;
		try{
			conn = DBUtil.getConn();
			String sql = "select * from employee_basic_information where eid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eid1);
			rs = pstmt.executeQuery();
			while(rs.next()){
				String eid = rs.getString("eid");
				String branch = rs.getString("branch");
				String birthdate = rs.getString("birthdate");
				String nation = rs.getString("nation");
				String name = rs.getString("name");
				String sex = rs.getString("sex");
				String standardOfCulture = rs.getString("standardOfCulture");
				String politicalStatus = rs.getString("politicalStatus");
				String workingHours = rs.getString("workingHours");
				String contractTerm = rs.getString("contractTerm");
				String typeOfWork = rs.getString("typeOfWork");
				String drivingLicense = rs.getString("drivingLicense");
				String skillWage = rs.getString("skillWage");
				String fileWage = rs.getString("fileWage");
				String jobWage = rs.getString("jobWage");
				String totalWage = rs.getString("totalWage");
				String homeAddress = rs.getString("homeAddress");
				String postalcode = rs.getString("postalcode");
				emp = new EmployeeBasicInfomation(eid,branch,birthdate,nation,
						name,sex,standardOfCulture,politicalStatus,workingHours,
						contractTerm,typeOfWork,drivingLicense,skillWage,
						fileWage,jobWage,totalWage,homeAddress,postalcode
						);
			}
			return emp;
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			DBUtil.closeAll(rs, pstmt, conn);
		}
		return emp;
	}

	
	//查询全部职工信息
		public List<EmployeeBasicInfomation> queryAllEmployees(int pageno,int pagesize){
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			int beginIndex = (pageno-1)*pagesize;
			List<EmployeeBasicInfomation> emps = new ArrayList<>();
			EmployeeBasicInfomation emp = null;
			
			try{
				conn = DBUtil.getConn();
				String sql = "select * from employee_basic_information order by eid limit "+beginIndex+","+pagesize;
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					String eid = rs.getString("eid");
					String branch = rs.getString("branch");
					String birthdate = rs.getString("birthdate");
					String nation = rs.getString("nation");
					String name = rs.getString("name");
					String sex = rs.getString("sex");
					String standardOfCulture = rs.getString("standardOfCulture");
					String politicalStatus = rs.getString("politicalStatus");
					String workingHours = rs.getString("workingHours");
					String contractTerm = rs.getString("contractTerm");
					String typeOfWork = rs.getString("typeOfWork");
					String drivingLicense = rs.getString("drivingLicense");
					String skillWage = rs.getString("skillWage");
					String fileWage = rs.getString("fileWage");
					String jobWage = rs.getString("jobWage");
					String totalWage = rs.getString("totalWage");
					String homeAddress = rs.getString("homeAddress");
					String postalcode = rs.getString("postalcode");
					emp = new EmployeeBasicInfomation(eid,branch,birthdate,nation,
							name,sex,standardOfCulture,politicalStatus,workingHours,
							contractTerm,typeOfWork,drivingLicense,skillWage,
							fileWage,jobWage,totalWage,homeAddress,postalcode
							);
					emps.add(emp);
				}
				
				
			}catch(SQLException e){
				e.printStackTrace();
			}catch(Exception e){
				e.printStackTrace();
			}
			finally{
				DBUtil.closeAll(rs, pstmt, conn);
			}
			return emps;
			
		}
	
	
	//增加职员
	public boolean addEmployeeByEid(EmployeeBasicInfomation emp){
		String sql = "insert into employee_basic_information values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = {emp.getEid(),emp.getBranch(),emp.getBirthdate(),emp.getNation(),emp.getName(),
				emp.getSex(),emp.getStandardOfCulture(),emp.getPoliticalStatus(),emp.getWorkingHours(),
				emp.getContractTerm(),emp.getTypeOfWork(),emp.getDrivingLicense(),emp.getSkillWage(),
				emp.getFileWage(),emp.getJobWage(),emp.getTotalWage(),emp.getHomeAddress(),emp.getPostalcode()};
		int count = DBUtil.executuIUD(sql, params);
		if(count>0){
			return true;
		}else{
			return false;
		}
	}
	
	
	//删除职员信息
	public boolean deleteEmployeeByEid(String eid){
		Connection conn = null;
		PreparedStatement pstmt = null;
		try{
			conn = DBUtil.getConn();
			String sql = "delete from employee_basic_information where eid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,eid);
			int count = pstmt.executeUpdate();
			if(count>0){
				return true;
			}else{
				return false;
			}
		}catch(SQLException e){
			e.printStackTrace();
			return false;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		finally{
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
		

		//修改职员信息
		public boolean updateEmployeeByEid(String eid,EmployeeBasicInfomation emp){
			String sql = "update employee_basic_information"
					+ " set branch=?,birthdate=?,nation=?,name=?,sex=?,standardOfCulture=?,"
					+ "politicalStatus=?,workingHours=?,contractTerm=?,typeOfWork=?,drivingLicense=?,"
					+ "skillWage=?,fileWage=?,jobWage=?,totalWage=?,homeAddress=?,postalcode=? "
					+ "where eid=?";

			Object[] params = {emp.getBranch(),emp.getBirthdate(),emp.getNation(),emp.getName(),
					emp.getSex(),emp.getStandardOfCulture(),emp.getPoliticalStatus(),emp.getWorkingHours(),
					emp.getContractTerm(),emp.getTypeOfWork(),emp.getDrivingLicense(),emp.getSkillWage(),emp.getFileWage(),
					emp.getJobWage(),emp.getTotalWage(),emp.getHomeAddress(),emp.getPostalcode(),emp.getEid()};
			
			int count = DBUtil.executuIUD(sql, params);
			if(count>0){
				return true;
			}else{
				return false;
			}
		}
}
