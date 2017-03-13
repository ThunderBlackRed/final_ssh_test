package com.test.action;

import java.io.UnsupportedEncodingException;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.test.forms.ThingForm;
import com.test.service.ThingManager;

public class ThingAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ThingForm thingForm;
	@Autowired
	private ThingManager thingManager;

	public ThingForm getThingForm() {
		return thingForm;
	}

	public void setThingForm(ThingForm thingForm) {
		this.thingForm = thingForm;
	}

	public void setThingManager(ThingManager thingManager) {
		this.thingManager = thingManager;
	}

	public String execute() throws HibernateException {
		try {
			thingManager.regThing(thingForm);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
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
