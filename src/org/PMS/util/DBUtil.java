package org.PMS.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DBUtil {
	static{
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public static Connection getConn(){
		Connection conn = null;
		try{
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/personnel_management_system","root","root");

		}catch(SQLException e){
			e.printStackTrace();
		}
		return conn;
	}
	
	public static int executuIUD(String sql,Object[] params){
		int count = 0;
		Connection conn = DBUtil.getConn();
		PreparedStatement ps = null;
		
		try{
			ps = conn.prepareStatement(sql);
			
			for(int i=0;i<params.length;i++){
				ps.setObject(i+1,params[i]);
			}
			count = ps.executeUpdate();
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, ps, conn);
		}
		return count;
	}
	
	public static void closeAll(ResultSet rs,PreparedStatement ps,Connection conn){
		try {
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
