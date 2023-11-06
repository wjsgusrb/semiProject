package com.kh.mybatis.chart.model.vo;

import java.sql.Date;
import java.util.Arrays;

public class Chart {
	private int exChartNo;
	private int exChartTime;
	private String exChartTarget;
	private Date exCharDay;
	private String userId;
	
	
	
	public Chart() {
		super();
	}

	public Chart(int exChartNo, int exChartTime, String exChartTarget, Date exCharDay, int userId) {
		super();
		this.exChartNo = exChartNo;
		this.exChartTime = exChartTime;
		this.exChartTarget = exChartTarget;
		this.exCharDay = exCharDay;
		this.userId = userId;
	}

	public int getExChartNo() {
		return exChartNo;
	}

	public void setExChartNo(int exChartNo) {
		this.exChartNo = exChartNo;
	}

	public int getExChartTime() {
		return exChartTime;
	}

	public void setExChartTime(int exChartTime) {
		this.exChartTime = exChartTime;
	}

	public String getExChartTarget() {
		return exChartTarget;
	}

	public void setExChartTarget(String exChartTarget) {
		this.exChartTarget = exChartTarget;
	}

	public Date getExCharDay() {
		return exCharDay;
	}

	public void setExCharDay(Date exCharDay) {
		this.exCharDay = exCharDay;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Chart [exChartNo=" + exChartNo + ", exChartTime=" + exChartTime + ", exChartTarget="
				+exChartTarget+ ", exCharDay=" + exCharDay + ", userNo=" + userId + "]";
	}
	
}
