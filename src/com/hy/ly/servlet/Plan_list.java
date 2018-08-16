package com.hy.ly.servlet;

public class Plan_list {

	private String plan_list;
	private String rent;
	private String fact_rent;
	private String status;
	public String getPlan_list() {
		return plan_list;
	}
	public void setPlan_list(String plan_list) {
		this.plan_list = plan_list;
	}
	public String getRent() {
		return rent;
	}
	public void setRent(String rent) {
		this.rent = rent;
	}
	public String getFact_rent() {
		return fact_rent;
	}
	public void setFact_rent(String fact_rent) {
		this.fact_rent = fact_rent;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Plan_list(String plan_list, String rent, String fact_rent, String status) {
		super();
		this.plan_list = plan_list;
		this.rent = rent;
		this.fact_rent = fact_rent;
		this.status = status;
	}
	public Plan_list() {
		super();
	}
	
}
