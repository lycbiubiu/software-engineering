package org.PMS.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.PMS.entity.JobTransfer;
import org.PMS.util.DBUtil;



public class JobTransferDao {
//添加调入调出、内部调动
	public static int addJobTransfer(JobTransfer jt){
		
		String sql = "insert into job_transfer values (?,?,?,?,DATE_FORMAT(?,'%Y-%m-%d'))";
		Object[] params = {jt.getTid(),jt.getEid(),jt.getNewUnit(),jt.getOriginUnit(),jt.getTransferDate()};
		
		return DBUtil.executuIUD(sql, params);
	}
	
//查询所有调动信息
	public static ArrayList<JobTransfer> selectAllJobTransfer(){
		
		ArrayList<JobTransfer> jtlist = new ArrayList<JobTransfer>();
		JobTransfer jt = null;
		ResultSet rs = null;
		Connection conn = DBUtil.getConn();
		PreparedStatement ps = null;
		
		try{
			String sql = "select * from job_transfer";
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()){
				String tid = rs.getString("tid");
				String eid = rs.getString("eid");
				String 	name = rs.getString("name");
				String 	sex = rs.getString("sex");
				String 	job = rs.getString("job");
				String 	wage = rs.getString("wage");
				String originUnit = rs.getString("originUnit");
				String newUnit = rs.getString("newUnit");
				String transferDate = rs.getString("transferDate");
				

				jt = new JobTransfer(tid,eid,name,sex,job,wage,originUnit,newUnit,transferDate);
				jtlist.add(jt);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(rs, ps, conn);
		}
		return jtlist;
		
	}
	
}
