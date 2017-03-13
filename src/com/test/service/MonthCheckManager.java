package com.test.service;

import org.hibernate.HibernateException;

import com.test.forms.MonthCheckForm;

public interface MonthCheckManager {
	public void regMonthCheck(MonthCheckForm monthCheckForm) throws HibernateException;
}	
