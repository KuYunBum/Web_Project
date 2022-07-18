package com.spring.dto;

import java.util.Date;


public class UserRecordDTO {
	private int userNum;
	private Date startTime;
	private Date endTime;
	private Date totalTime;
	private Date useDate;
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public Date getTotalTime() {
		return totalTime;
	}
	public void setTotalTime(Date totalTime) {
		this.totalTime = totalTime;
	}
	public Date getUseDate() {
		return useDate;
	}
	public void setUseDate(Date useDate) {
		this.useDate = useDate;
	}
	@Override
	public String toString() {
		return "UserRecord [userNum=" + userNum + ", startTime=" + startTime + ", endTime=" + endTime + ", totalTime="
				+ totalTime + ", useDate=" + useDate + "]";
	}
	
	
}
