package com.test.serviceImpl;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.test.beans.Thing;
import com.test.dao.BaseDao;
import com.test.forms.ThingForm;
import com.test.service.ThingManager;

public class ThingManagerImpl implements ThingManager {
	private BaseDao dao;

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}

	@Override
	public void regThing(ThingForm thingForm) throws HibernateException {
		// TODO Auto-generated method stub
		Thing thing = new Thing();
		BeanUtils.copyProperties(thingForm, thing);
		dao.saveObject(thing);
	}
}
