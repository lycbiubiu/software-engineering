package org.PMS.entity;

public class JobTransfer {
	JobTransfer(){};
	private String tid;//调动编号
	private String eid;
	private String originUnit;
	private String newUnit;
	private String transferDate;
	
	
	
	public JobTransfer(String tid, String eid, String name, String sex, String job, String wage, String originUnit,
			String newUnit, String transferDate) {
		super();
		this.tid = tid;
		this.eid = eid;
		this.originUnit = originUnit;
		this.newUnit = newUnit;
		this.transferDate = transferDate;
	}
	public String getTid() {
		return tid;
	}
	public String getEid() {
		return eid;
	}
	public String getOriginUnit() {
		return originUnit;
	}
	public String getNewUnit() {
		return newUnit;
	}
	public String getTransferDate() {
		return transferDate;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public void setOriginUnit(String originUnit) {
		this.originUnit = originUnit;
	}
	public void setNewUnit(String newUnit) {
		this.newUnit = newUnit;
	}
	public void setTransferDate(String transferDate) {
		this.transferDate = transferDate;
	}
	
	
}