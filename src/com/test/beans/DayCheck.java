package com.test.beans;

import java.sql.Date;

public class DayCheck {
	private int dc_id;
	private String per_no;
	private String per_name;
	private Date dc_date;
	public int getDc_id() {
		return dc_id;
	}
	public void setDc_id(int dc_id) {
		this.dc_id = dc_id;
	}
	public String getPer_no() {
		return per_no;
	}
	public void setPer_no(String per_no) {
		this.per_no = per_no;
	}
	public String getPer_name() {
		return per_name;
	}
	public void setPer_name(String per_name) {
		this.per_name = per_name;
	}
	public Date getDc_date() {
		return dc_date;
	}
	public void setDc_date(Date dc_date) {
		this.dc_date = dc_date;
	}
	
	
}
