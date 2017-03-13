package com.test.service;

import org.hibernate.HibernateException;

import com.test.forms.ThingForm;

public interface ThingManager {
	public void regThing(ThingForm thingForm) throws HibernateException;
}
