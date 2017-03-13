package com.test.forms;

public class DepartmentForm {
	private String per_name;
	private int per_phone;
	private String de_name;
	private String de_info;
	private int de_perNum;

	public DepartmentForm() {
	}

	public DepartmentForm(String per_name, int per_phone, String de_name,
			String de_info, int de_perNum) {
		super();
		this.per_name = per_name;
		this.per_phone = per_phone;
		this.de_name = de_name;
		this.de_info = de_info;
		this.de_perNum = de_perNum;
	}

	public String getPer_name() {
		return per_name;
	}

	public void setPer_name(String per_name) {
		this.per_name = per_name;
	}

	public int getPer_phone() {
		return per_phone;
	}

	public void setPer_phone(int per_phone) {
		this.per_phone = per_phone;
	}

	public String getDe_name() {
		return de_name;
	}

	public void setDe_name(String de_name) {
		this.de_name = de_name;
	}

	public String getDe_info() {
		return de_info;
	}

	public void setDe_info(String de_info) {
		this.de_info = de_info;
	}

	public int getDe_perNum() {
		return de_perNum;
	}

	public void setDe_perNum(int de_perNum) {
		this.de_perNum = de_perNum;
	}

}
