package com.test.serviceImpl;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.test.beans.Department;
import com.test.dao.BaseDao;
import com.test.forms.DepartmentForm;
import com.test.service.DepartmentManager;

public class DepartmentManagerImpl implements DepartmentManager {
	private BaseDao dao;

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}

	@Override
	public void regDepartment(DepartmentForm departmentForm)
			throws HibernateException {
		// TODO Auto-generated method stub
		Department department = new Department();
		BeanUtils.copyProperties(departmentForm, department);
		dao.saveObject(department);

	}
}
