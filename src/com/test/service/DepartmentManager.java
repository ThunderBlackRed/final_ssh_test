package com.test.service;

import org.hibernate.HibernateException;

import com.test.forms.DepartmentForm;

public interface DepartmentManager {
	public void regDepartment(DepartmentForm departmentForm) throws HibernateException;
}
