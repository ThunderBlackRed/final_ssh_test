package com.test.serviceImpl;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.test.beans.DayCheck;
import com.test.dao.BaseDao;
import com.test.forms.DayCheckForm;
import com.test.service.DayCheckManager;

public class DayCheckManagerImpl implements DayCheckManager {
	private BaseDao dao;

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}
	
	@Override
	public void regDayCheck(DayCheckForm dayCheckForm)
			throws HibernateException {
		// TODO Auto-generated method stub
		DayCheck dayCheck = new DayCheck();
		BeanUtils.copyProperties(dayCheckForm, dayCheck);
		dao.saveObject(dayCheck);

	}
}
