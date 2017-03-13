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

	// ��ҳ����
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
