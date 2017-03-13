package com.test.daoImpl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.beans.Person;
import com.test.dao.BaseDao;
import com.test.forms.PersonForm;

public class PersonDao extends HibernateDaoSupport implements BaseDao {

	public Person login(PersonForm personForm) {
		/* Person是POJO的名字，而不是表名 */
		String hql = " from Person p where p.per_no=? and p.per_pwd=?";
		@SuppressWarnings("unchecked")
		List<Person> list = this.getHibernateTemplate().find(hql,
				personForm.getPer_no(), personForm.getPer_pwd());
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	@Override
	public List<Object> queryAll(Class<Object> clazz) throws Exception {
		return null;
	}

	@Override
	public void saveObject(Object obj) throws HibernateException {
		getHibernateTemplate().save(obj);
	}

	@Override
	public void saveOrUpdateObject(Object obj) throws Exception {

	}

	@Override
	public void deleteObject(Object obj) throws Exception {
		getHibernateTemplate().delete(obj);
	}

	@Override
	public int deleteObjectsByIds(Class<Object> clazz, String[] ids)
			throws Exception {
		return 0;
	}

	@Override
	public int deleteAll(Class<Object> clazz) throws Exception {
		return 0;
	}

	@Override
	public void updateObject(Object obj) throws Exception {

	}

	@Override
	public int executeUpdate(String sql) throws Exception {
		return 0;
	}

	@Override
	public int executeUpdate(String sql, Map<String, Object> conditionMap)
			throws Exception {
		return 0;
	}

	@Override
	public int executeUpdate(String sql, Object[] parameters) throws Exception {
		return 0;
	}

	@Override
	public Object loadObject(Class<Object> clazz, Serializable id)
			throws Exception {
		return null;
	}

	@Override
	public Object getObject(Class<Object> clazz, Serializable id)
			throws Exception {
		return null;
	}

	@Override
	public List<Object> queryObject(String queryString) throws Exception {
		return null;
	}

	@Override
	public List<Object> queryObject(String queryString,
			Map<String, Object> conditionMap) throws Exception {
		return null;
	}

	@Override
	public List<Object> queryObject(String queryString, Object[] parameters)
			throws Exception {
		return null;
	}


	@Override
	public List<Object> queryObjectByIds(Class<Object> clazz, String[] ids)
			throws Exception {
		return null;
	}

	@Override
	public List<Object> findPageByQuery(String queryString, int startIndex,
			int endIndex) throws Exception {
		return null;
	}

	@Override
	public List<Object> findPageByQuery(String queryString,
			Map<String, Object> conditionMap, int startIndex, int endIndex)
			throws Exception {
		return null;
	}

	@Override
	public List<Object> findPageByQuery(String queryString,
			Object[] parameters, int startIndex, int endIndex) throws Exception {
		return null;
	}

	@Override
	public int getInt(String sql) throws Exception {
		return 0;
	}

	@Override
	public int getInt(String sql, Map<String, Object> conditionMap)
			throws Exception {
		return 0;
	}

	@Override
	public int getInt(String sql, Object[] parameters) throws Exception {
		return 0;
	}

}
