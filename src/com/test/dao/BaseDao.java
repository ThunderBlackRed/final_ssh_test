package com.test.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;

public interface BaseDao {
	public void saveObject(Object obj) throws HibernateException;
	

	/**
	 * �������¶���
	 * 
	 * @param T
	 * @throws Exception
	 */
	public void saveOrUpdateObject(Object obj) throws Exception;

	/**
	 * ɾ������,��Ҫ���أ��佫ɾ�����еĹ�������
	 * 
	 * @param T
	 * @throws Exception
	 */
	public void deleteObject(Object obj) throws Exception;

	/**
	 * ��������ɾ��ָ������
	 * 
	 * @param clazz
	 *            ����
	 * @param ids
	 *            Ҫɾ�����������
	 * @return int ɾ�����������
	 * @throws Exception
	 */
	public int deleteObjectsByIds(Class<Object> clazz, String[] ids) throws Exception;

	/**
	 * ��������ɾ��ȫ������
	 * 
	 * @param clazz
	 *            ����
	 * @return int
	 * @throws Exception
	 */
	public int deleteAll(Class<Object> clazz) throws Exception;

	/**
	 * ���¶���
	 * 
	 * @param T
	 * @throws Exception
	 */
	public void updateObject(Object obj) throws Exception;

	/**
	 * ����sql��������ɾ�Ĳ�����ֻ֧��ԭ��sql
	 * 
	 * @param sql
	 *            Ҫ���в�����sql���
	 * @return resultInt ִ��sql�����Ӱ�������
	 * @throws Exception
	 */
	public int executeUpdate(String sql) throws Exception;

	/**
	 * ����sql��������ɾ�Ĳ�����ֻ֧��ԭ��sql
	 * 
	 * @param sql
	 *            Ҫ���в�����sql���
	 * @param conditionMap
	 *            ���sql����е� ��ʶ����ʵ��ֵ ��
	 * @return resultInt ִ��sql�����Ӱ�������
	 * @throws Exception
	 */
	public int executeUpdate(String sql, Map<String,Object> conditionMap) throws Exception;

	/**
	 * ����sql��������ɾ�Ĳ�����ֻ֧��ԭ��sql
	 * 
	 * @param sql
	 *            Ҫ���в�����sql���
	 * @param parameters
	 *            ���sql����еĲ���ֵ
	 * @return resultInt ִ��sql�����Ӱ�������
	 * @throws Exception
	 */
	public int executeUpdate(String sql, Object[] parameters) throws Exception;

	/**
	 * Load������ ����������������ݿ�һ����Ӧ�ļ�¼,���û����Ӧ��ʵ�壬�׳��쳣
	 * 
	 * @param clazz
	 * @param id
	 * @return Object
	 * @throws Exception
	 */
	public Object loadObject(Class<Object> clazz, Serializable id) throws Exception;

	/**
	 * get������ ����������������ݿ�һ����Ӧ�ļ�¼,���û����Ӧ��ʵ�壬���� null
	 * 
	 * @param clazz
	 * @param id
	 * @return Object
	 * @throws Exception
	 */
	public Object getObject(Class<Object> clazz, Serializable id) throws Exception;

	/**
	 * ���Ҷ���
	 * 
	 * @param queryString
	 *            Ҫִ�е����
	 * @return List<Object> �����ѯ�����Ķ����б�
	 * @throws Exception
	 */
	public List<Object> queryObject(String queryString) throws Exception;

	/**
	 * ���Ҷ���
	 * 
	 * @param queryString
	 *            Ҫִ�е����
	 * @param conditionMap
	 *            ���queryString����е� ��ʶ����ʵ��ֵ ��
	 * @return List<Object> �����ѯ�����Ķ����б�
	 * @throws Exception
	 */
	public List<Object> queryObject(String queryString, Map<String,Object> conditionMap)throws Exception;

	/**
	 * ���Ҷ���
	 * 
	 * @param queryString
	 *            Ҫִ�е����
	 * @param parameters
	 *            ���queryString����в���ֵ
	 * @return List<Object> �����ѯ�����Ķ����б�
	 * @throws Exception
	 */
	public List<Object> queryObject(String queryString, Object[] parameters)throws Exception;

	/**
	 * �������еĶ���
	 * 
	 * @param clazz
	 *            ��������
	 * @return List<Object> ��������ж���
	 * @throws Exception
	 */
	public List<Object> queryAll(Class<Object> clazz) throws Exception;

	/**
	 * �������еĶ���
	 * 
	 * @param clazz
	 *            ��������
	 * @param ids
	 *            Ҫ�����������������
	 * @return List<Object> ��������ж���
	 * @throws Exception
	 */
	public List<Object> queryObjectByIds(Class<Object> clazz, String[] ids)throws Exception;

	/**
	 * ��ҳ��ѯ
	 * 
	 * @param queryString
	 *            ��ѯ���
	 * @param startIndex
	 *            ��¼��ʼ��
	 * @param endIndex
	 *            ��¼������
	 * @return List ��ҳ���
	 * @throws Exception
	 */
	public List<Object> findPageByQuery(String queryString, int startIndex,int endIndex) throws Exception;

	/**
	 * ��ҳ��ѯ
	 * 
	 * @param queryString
	 *            ��ѯ���
	 * @param conditionMap
	 *            ��Ų�ѯ����е� ��ʶ����ʵ��ֵ ��
	 * @param startIndex
	 *            ��¼��ʼ��
	 * @param endIndex
	 *            ��¼������
	 * @return List ��ҳ���
	 * @throws Exception
	 */
	public List<Object> findPageByQuery(String queryString, Map<String,Object> conditionMap,int startIndex, int endIndex) throws Exception;

	/**
	 * ��ҳ��ѯ
	 * 
	 * @param queryString
	 *            ��ѯ���
	 * @param parameters
	 *            ��Ų�ѯ����еĲ���ֵ
	 * @param startIndex
	 *            ��¼��ʼ��
	 * @param endIndex
	 *            ��¼������
	 * @return List ��ҳ���
	 * @throws Exception
	 */
	public List<Object> findPageByQuery(String queryString, Object[] parameters,int startIndex, int endIndex) throws Exception;

	/**
	 * ���sql����ִ�н��������䷵��һ����ת��Ϊ���ε�ֵ
	 * 
	 * @param sql
	 *            Ҫִ�е�sql���
	 * @return int sql���Ľ��ֵ
	 * @throws Exception
	 */
	public int getInt(String sql) throws Exception;

	/**
	 * ���sql����ִ�н��������䷵��һ����ת��Ϊ���ε�ֵ
	 * 
	 * @param sql
	 *            Ҫִ�е�sql���
	 * @param conditionMap
	 *            ���sql����е� ��ʶ����ʵ��ֵ ��
	 * @return int sql���Ľ��ֵ
	 * @throws Exception
	 */
	public int getInt(String sql, Map<String,Object> conditionMap) throws Exception;

	/**
	 * ���sql����ִ�н��������䷵��һ����ת��Ϊ���ε�ֵ
	 * 
	 * @param sql
	 *            Ҫִ�е�sql���
	 * @param parameters
	 *            ����
	 * @return int sql���Ľ��ֵ
	 * @throws Exception
	 */
	public int getInt(String sql, Object[] parameters) throws Exception;
}
