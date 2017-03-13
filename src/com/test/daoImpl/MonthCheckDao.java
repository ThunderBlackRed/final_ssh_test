package com.test.daoImpl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.dao.BaseDao;

public class MonthCheckDao extends HibernateDaoSupport implements BaseDao {

	@Override
	public void saveObject(Object obj) throws HibernateException {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(obj);
	}

	@Override
	public void saveOrUpdateObject(Object obj) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteObject(Object obj) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int deleteObjectsByIds(Class<Object> clazz, String[] ids)
			throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteAll(Class<Object> clazz) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateObject(Object obj) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int executeUpdate(String sql) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int executeUpdate(String sql, Map<String, Object> conditionMap)
			throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int executeUpdate(String sql, Object[] parameters) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Object loadObject(Class<Object> clazz, Serializable id)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getObject(Class<Object> clazz, Serializable id)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> queryObject(String queryString) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> queryObject(String queryString,
			Map<String, Object> conditionMap) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> queryObject(String queryString, Object[] parameters)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> queryAll(Class<Object> clazz) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> queryObjectByIds(Class<Object> clazz, String[] ids)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> findPageByQuery(String queryString, int startIndex,
			int endIndex) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> findPageByQuery(String queryString,
			Map<String, Object> conditionMap, int startIndex, int endIndex)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> findPageByQuery(String queryString,
			Object[] parameters, int startIndex, int endIndex) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getInt(String sql) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getInt(String sql, Map<String, Object> conditionMap)
			throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getInt(String sql, Object[] parameters) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
