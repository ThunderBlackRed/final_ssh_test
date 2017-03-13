package com.test.action;

import java.io.UnsupportedEncodingException;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.test.forms.DepartmentForm;
import com.test.service.DepartmentManager;

public class DepartmentAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private DepartmentForm departmentForm;
	@Autowired
	private DepartmentManager departmentManager;

	public DepartmentForm getDepartmentForm() {
		return departmentForm;
	}

	public void setDepartmentForm(DepartmentForm departmentForm) {
		this.departmentForm = departmentForm;
	}

	public void setDepartmentManager(DepartmentManager departmentManager) {
		this.departmentManager = departmentManager;
	}

	public String execute() throws HibernateException {
		try {
			departmentManager.regDepartment(departmentForm);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	// 分页函数
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
