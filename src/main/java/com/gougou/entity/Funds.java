package com.gougou.entity;
/**
 * 资金 entity
 * @author kinfer
 *
 */
public class Funds {
	private int id;
	private String availabeAmount;
	private String lockAmount;
	private String totalRecharge;
	private String totalWithdraw;
	private int status;
	private String createTime;
	private String updateTime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAvailabeAmount() {
		return availabeAmount;
	}
	public void setAvailabeAmount(String availabeAmount) {
		this.availabeAmount = availabeAmount;
	}
	public String getLockAmount() {
		return lockAmount;
	}
	public void setLockAmount(String lockAmount) {
		this.lockAmount = lockAmount;
	}
	public String getTotalRecharge() {
		return totalRecharge;
	}
	public void setTotalRecharge(String totalRecharge) {
		this.totalRecharge = totalRecharge;
	}
	public String getTotalWithdraw() {
		return totalWithdraw;
	}
	public void setTotalWithdraw(String totalWithdraw) {
		this.totalWithdraw = totalWithdraw;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

}
