package com.test.service;

import org.hibernate.HibernateException;

import com.test.forms.DayCheckForm;

public interface DayCheckManager {
	public void regDayCheck(DayCheckForm dayCheckForm) throws HibernateException;
}
