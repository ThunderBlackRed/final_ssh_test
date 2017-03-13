package com.test.serviceImpl;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.test.beans.Person;
import com.test.dao.BaseDao;
import com.test.daoImpl.PersonDao;
import com.test.forms.PersonForm;
import com.test.service.PersonManager;

public class PersonManagerImpl implements PersonManager {
	
	private BaseDao dao;
	@Autowired
	private PersonDao personDao;

	public BaseDao getDao() {
		return dao;
	}

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}

	public PersonDao getPersonDao() {
		return personDao;
	}

	public void setPersonDao(PersonDao personDao) {
		this.personDao = personDao;
	}

	@Override
	public void regPerson(PersonForm personForm) throws HibernateException {
		// TODO Auto-generated method stub
		Person person = new Person();
		BeanUtils.copyProperties(personForm, person);
		dao.saveObject(person);
	}

	@Override
	public Person login(PersonForm personForm) {
		// TODO Auto-generated method stub
		return personDao.login(personForm);
	}
}
