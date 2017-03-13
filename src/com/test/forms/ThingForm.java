package com.test.forms;

import java.util.Date;

public class ThingForm {
	private String th_name;
	private int per_id;
	private String per_no;
	private String per_name;
	private String th_reason;
	private int per_ADid;
	private String per_ADno;
	private String per_ADname;
	private String th_result;
	private Date th_date;
	private String th_long;

	public ThingForm() {
	}

	public ThingForm(String th_name, int per_id, String per_no,
			String per_name, String th_reason, int per_ADid, String per_ADno,
			String per_ADname, String th_result, Date th_date, String th_long) {
		super();
		this.th_name = th_name;
		this.per_id = per_id;
		this.per_no = per_no;
		this.per_name = per_name;
		this.th_reason = th_reason;
		this.per_ADid = per_ADid;
		this.per_ADno = per_ADno;
		this.per_ADname = per_ADname;
		this.th_result = th_result;
		this.th_date = th_date;
		this.th_long = th_long;
	}

	public String getTh_name() {
		return th_name;
	}

	public void setTh_name(String th_name) {
		this.th_name = th_name;
	}

	public int getPer_id() {
		return per_id;
	}

	public void setPer_id(int per_id) {
		this.per_id = per_id;
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

	public String getTh_reason() {
		return th_reason;
	}

	public void setTh_reason(String th_reason) {
		this.th_reason = th_reason;
	}

	public int getPer_ADid() {
		return per_ADid;
	}

	public void setPer_ADid(int per_ADid) {
		this.per_ADid = per_ADid;
	}

	public String getPer_ADno() {
		return per_ADno;
	}

	public void setPer_ADno(String per_ADno) {
		this.per_ADno = per_ADno;
	}

	public String getPer_ADname() {
		return per_ADname;
	}

	public void setPer_ADname(String per_ADname) {
		this.per_ADname = per_ADname;
	}

	public String getTh_result() {
		return th_result;
	}

	public void setTh_result(String th_result) {
		this.th_result = th_result;
	}

	public Date getTh_date() {
		return th_date;
	}

	public void setTh_date(Date th_date) {
		this.th_date = th_date;
	}

	public String getTh_long() {
		return th_long;
	}

	public void setTh_long(String th_long) {
		this.th_long = th_long;
	}

}
