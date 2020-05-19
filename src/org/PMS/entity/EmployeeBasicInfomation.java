package org.PMS.entity;

public class EmployeeBasicInfomation {
	private String eid;
	private String branch;
	private String birthdate;
	private String nation;
	private String name;
	private String sex;
	private String standardOfCulture;
	private String politicalStatus;
	private String workingHours;
	private String contractTerm;
	private String typeOfWork;
	private String drivingLicense;
	private String skillWage;
	private String fileWage;
	private String jobWage;
	private String totalWage;
	private String homeAddress;
	private String postalcode;
	EmployeeBasicInfomation(){};
	
	public EmployeeBasicInfomation(String eid, String ebranch, String birthdate, String nation, String name,
			String sex, String standardOfCulture, String politicalStatus, String workingHours, String contractTerm,
			String typeOfWork, String drivingLicense, String skillWage, String fileWage, String jobWage,
			String totalWage, String homeAddress, String postalcode) {
		this.eid = eid;
		this.branch = ebranch;
		this.birthdate = birthdate;
		this.nation = nation;
		this.name = name;
		this.sex = sex;
		this.standardOfCulture = standardOfCulture;
		this.politicalStatus = politicalStatus;
		this.workingHours = workingHours;
		this.contractTerm = contractTerm;
		this.typeOfWork = typeOfWork;
		this.drivingLicense = drivingLicense;
		this.skillWage = skillWage;
		this.fileWage = fileWage;
		this.jobWage = jobWage;
		this.totalWage = totalWage;
		this.homeAddress = homeAddress;
		this.postalcode = postalcode;
	}
	public String getEid() {
		return eid;
	}
	public String getBranch() {
		return branch;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public String getNation() {
		return nation;
	}
	public String getName() {
		return name;
	}
	public String getSex() {
		return sex;
	}
	public String getStandardOfCulture() {
		return standardOfCulture;
	}
	public String getPoliticalStatus() {
		return politicalStatus;
	}
	public String getWorkingHours() {
		return workingHours;
	}
	public String getContractTerm() {
		return contractTerm;
	}
	public String getTypeOfWork() {
		return typeOfWork;
	}
	public String getDrivingLicense() {
		return drivingLicense;
	}
	public String getSkillWage() {
		return skillWage;
	}
	public String getFileWage() {
		return fileWage;
	}
	public String getJobWage() {
		return jobWage;
	}
	public String getTotalWage() {
		return totalWage;
	}
	public String getHomeAddress() {
		return homeAddress;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public void setStandardOfCulture(String standardOfCulture) {
		this.standardOfCulture = standardOfCulture;
	}
	public void setPoliticalStatus(String politicalStatus) {
		this.politicalStatus = politicalStatus;
	}
	public void setWorkingHours(String workingHours) {
		this.workingHours = workingHours;
	}
	public void setContractTerm(String contractTerm) {
		this.contractTerm = contractTerm;
	}
	public void setTypeOfWork(String typeOfWork) {
		this.typeOfWork = typeOfWork;
	}
	public void setDrivingLicense(String drivingLicense) {
		this.drivingLicense = drivingLicense;
	}
	public void setSkillWage(String skillWage) {
		this.skillWage = skillWage;
	}
	public void setFileWage(String fileWage) {
		this.fileWage = fileWage;
	}
	public void setJobWage(String jobWage) {
		this.jobWage = jobWage;
	}
	public void setTotalWage(String totalWage) {
		this.totalWage = totalWage;
	}
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	
	
}
