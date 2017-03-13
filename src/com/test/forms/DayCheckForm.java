package com.test.forms;

import java.sql.Date;

public class DayCheckForm {
	private String per_no;
	private String per_name;
	private Date dc_date;

	public DayCheckForm() {
	}

	public DayCheckForm(String per_no, String per_name, Date dc_date) {
		super();
		this.per_no = per_no;
		this.per_name = per_name;
		this.dc_date = dc_date;
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
