package com.test.service;

import org.hibernate.HibernateException;

import com.test.beans.Person;
import com.test.forms.PersonForm;

public interface PersonManager {
	public void regPerson(PersonForm personForm) throws HibernateException;
	
	//µÇÂ¼·½·¨
	public Person login(PersonForm personForm);
}
