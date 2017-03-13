package com.test.service;

import org.hibernate.HibernateException;

import com.test.forms.AnnouncementForm;

public interface AnnouncementManager {
	public void regAnnouncement(AnnouncementForm announcementForm) throws HibernateException;
}
