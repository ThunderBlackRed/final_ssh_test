package com.test.forms;

import java.util.Date;

public class AnnouncementForm {
	private String an_th;
	private String an_messages;
	private Date an_date;

	public AnnouncementForm() {
	}

	public AnnouncementForm(String an_th, String an_messages, Date an_date) {
		super();
		this.an_th = an_th;
		this.an_messages = an_messages;
		this.an_date = an_date;
	}

	public String getAn_th() {
		return an_th;
	}

	public void setAn_th(String an_th) {
		this.an_th = an_th;
	}

	public String getAn_messages() {
		return an_messages;
	}

	public void setAn_messages(String an_messages) {
		this.an_messages = an_messages;
	}

	public Date getAn_date() {
		return an_date;
	}

	public void setAn_date(Date an_date) {
		this.an_date = an_date;
	}

}
