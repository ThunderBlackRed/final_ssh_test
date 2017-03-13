package com.test.action;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.test.forms.DayCheckForm;
import com.test.service.DayCheckManager;

public class DayCheckAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private DayCheckForm dayCheckForm;
	@Autowired
	private DayCheckManager dayCheckManager;

	public DayCheckForm getDayCheckForm() {
		return dayCheckForm;
	}

	public void setDayCheckForm(DayCheckForm dayCheckForm) {
		this.dayCheckForm = dayCheckForm;
	}

	public void setDayCheckManager(DayCheckManager dayCheckManager) {
		this.dayCheckManager = dayCheckManager;
	}
	
	public String execute() throws HibernateException{
		try {
			dayCheckManager.regDayCheck(dayCheckForm);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
	// ·ÖÒ³º¯Êý
	public String List() throws Exception {
		return SUCCESS;
	}
}
