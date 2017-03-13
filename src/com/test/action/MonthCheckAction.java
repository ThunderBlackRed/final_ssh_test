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

	// 插入函数
	public String insert() {
		return "insert";
	}

	public String insertDo() {
		return "updateRe";
	}

	// 删除函数
	public String deleteDo() {
		return "updateRe";
	}

	// 更新函数
	public String updateDo() {
		return "updateRe";
	}

	// 查询函数
	public String find() {
		return "findById";
	}

	// 模糊查询
	public String findAll() throws UnsupportedEncodingException {
		return "findAll";
	}
}
