package com.test.serviceImpl;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.test.beans.MonthCheck;
import com.test.dao.BaseDao;
import com.test.forms.MonthCheckForm;
import com.test.service.MonthCheckManager;

public class MonthCheckManagerImpl implements MonthCheckManager {

	private BaseDao dao;

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}
	
	@Override
	public void regMonthCheck(MonthCheckForm monthCheckForm)
			throws HibernateException {
		// TODO Auto-generated method stub
		MonthCheck monthCheck = new MonthCheck();
		BeanUtils.copyProperties(monthCheckForm, monthCheck);
		dao.saveObject(monthCheck);

	}
}
