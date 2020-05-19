package org.PMS.dao;

import org.PMS.entity.AccountPassword;
import org.PMS.util.DBUtil;

public class AccountDao {
	public static int updateAccount(AccountPassword user){
		
		String sql = "update Account_Password set------ values (?,?,?,?,DATE_FORMAT(?,'%Y-%m-%d'))";
		
		Object[] params = {user.getEid(),user.getPassword(),user.getEmail(),user.getPhonenumber()};
		return DBUtil.executuIUD(sql, params);
	}
	
	
}
