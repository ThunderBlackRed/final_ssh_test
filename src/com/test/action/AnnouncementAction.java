package com.test.action;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.test.forms.AnnouncementForm;
import com.test.service.AnnouncementManager;

public class AnnouncementAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private AnnouncementForm announcementForm;
	@Autowired
	private AnnouncementManager announcementManager;

	public AnnouncementForm getAnnouncementForm() {
		return announcementForm;
	}

	public void setAnnouncementForm(AnnouncementForm announcementForm) {
		this.announcementForm = announcementForm;
	}

	public void setAnnouncementManager(AnnouncementManager announcementManager) {
		this.announcementManager = announcementManager;
	}

	public String execute() throws HibernateException {
		try {
			announcementManager.regAnnouncement(announcementForm);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public String find() {
		return SUCCESS;
	}

	// ¸üÐÂº¯Êý
	public String updateDo() {

		return "updateRe";
	}

	public String upload() {

		return "upload";
	}

	public String history() {
		return "history";
		/* return "failure"; */
	}

	public String historyHoutai() {
		return "historyHoutai";
	}
	/* return "failure"; */
}
