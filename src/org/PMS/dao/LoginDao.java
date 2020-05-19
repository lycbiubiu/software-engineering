package org.PMS.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.PMS.entity.AccountPassword;
import org.PMS.util.DBUtil;

public class LoginDao {
	//返回1成功登录 ，0未找到匹配账户密码，-1异常
	public static int login(AccountPassword person){
		int result = -1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			conn = DBUtil.getConn();
			String sql = "select count(*) from account_password where eid=? and password=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,person.getEid());
			pstmt.setString(2,person.getPassword());
			rs = pstmt.executeQuery();
			if(rs.next()){
				result = rs.getInt(1);
			}
			if(result>0){
				return 1;
			}
			else{
				return 0;
			}
		}catch(SQLException e){
			e.printStackTrace();
			return -1;
		}catch(Exception e){
			e.printStackTrace();
			return -3;
		}
		finally{
			DBUtil.closeAll(rs, pstmt, conn);
		}
		
	}
}
