package com.test.action;

import java.io.UnsupportedEncodingException;

import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.test.beans.Person;
import com.test.forms.PersonForm;
import com.test.service.PersonManager;

public class PersonAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private PersonForm personForm;
	@Autowired
	private PersonManager personManager;

	public PersonForm getPersonForm() {
		return personForm;
	}

	public void setPersonForm(PersonForm personForm) {
		this.personForm = personForm;
	}

	public void setPersonManager(PersonManager personManager) {
		this.personManager = personManager;
	}

	public String login() throws HibernateException {
		Person person = personManager.login(personForm);
		if (person == null) {
			// ��½ʧ��
			return "err";
		} else {
			if (person.getPer_admin() == 1) {
				ServletActionContext.getRequest().getSession()
						.setAttribute("personForm", person);
				return "adminPage";
			} else {
				// ��½�ɹ�
				// ���û�����Ϣ����session��
				ServletActionContext.getRequest().getSession()
						.setAttribute("personForm", person);
				// ҳ����ת
				return "userPage";
			}
		}
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
