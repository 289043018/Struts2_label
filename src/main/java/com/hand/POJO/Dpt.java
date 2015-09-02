package com.hand.POJO;

public class Dpt {
	private int DptId;
	private String DptName;
	public int getDptId() {
		return DptId;
	}
	public void setDptId(int dptId) {
		DptId = dptId;
	}
	public String getDptName() {
		return DptName;
	}
	public void setDptName(String dptName) {
		DptName = dptName;
	}
	public Dpt(int dptId, String dptName) {
		DptId = dptId;
		DptName = dptName;
	}
	
}
