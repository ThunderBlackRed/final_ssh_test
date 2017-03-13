package com.test.serviceImpl;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.test.beans.Announcement;
import com.test.dao.BaseDao;
import com.test.forms.AnnouncementForm;
import com.test.service.AnnouncementManager;

public class AnnouncementManagerImpl implements AnnouncementManager {
	private BaseDao dao;

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}

	@Override
	public void regAnnouncement(AnnouncementForm announcementForm)
			throws HibernateException {
		// TODO Auto-generated method stub
		Announcement announcement = new Announcement();
		BeanUtils.copyProperties(announcementForm, announcement);
		dao.saveObject(announcement);

	}
}
