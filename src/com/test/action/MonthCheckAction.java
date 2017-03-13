package com.test.action;

import java.io.UnsupportedEncodingException;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.test.forms.MonthCheckForm;
import com.test.service.MonthCheckManager;

public class MonthCheckAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private MonthCheckForm monthCheckForm;
	@Autowired
	private MonthCheckManager monthCheckManager;

	public MonthCheckForm getMonthCheckForm() {
		return monthCheckForm;
	}

	public void setMonthCheckForm(MonthCheckForm monthCheckForm) {
		this.monthCheckForm = monthCheckForm;
	}

	public void setMonthCheckManager(MonthCheckManager monthCheckManager) {
		this.monthCheckManager = monthCheckManager;
	}

	public String execute() throws HibernateException {
		try {
			monthCheckManager.regMonthCheck(monthCheckForm);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public String Excel() {
		return "excel";
	}

	public String List() throws Exception {
		return SUCCESS;
		/* return "failure"; */
	}

	// ���뺯��
	public String insert() {
		return "insert";
	}

	public String insertDo() {
		return "updateRe";
	}

	// ɾ������
	public String deleteDo() {
		return "updateRe";
	}

	// ���º���
	public String updateDo() {
		return "updateRe";
	}

	// ��ѯ����
	public String find() {
		return "findById";
	}

	// ģ����ѯ
	public String findAll() throws UnsupportedEncodingException {
		return "findAll";
	}
}
