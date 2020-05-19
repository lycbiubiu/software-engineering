package org.PMS.entity;

/**
 * @author 87174
 *@version 1.0.0
 */
public class AccountPassword {
	
	AccountPassword() { };
	private String eid;
	private String password;
	private String email;
	private String phonenumber;
	private int grade;
	
	
	public AccountPassword(String eid, String password, String email, String phonenumber) {
		super();
		this.eid = eid;
		this.password = password;
		this.email = email;
		this.phonenumber = phonenumber;
		this.grade = grade;
	}
	
	public AccountPassword(String eid, String password) {
		super();
		this.eid = eid;
		this.password = password;
		this.email = null;
		this.phonenumber = null;
		this.grade = 1;
	}
	
	public String getEid() {
		return eid;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhonenumber() {
		return phonenumber;
	}
	
	public void setEid(String eid) {
		this.eid = eid;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public void getGrade(int grade) {
		this.grade = grade;
	}
}
