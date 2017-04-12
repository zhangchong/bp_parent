package com.zc.bp.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.apache.poi.ss.formula.functions.T;

import com.zc.bp.domain.Task;
import com.zc.bp.domain.User;
import com.zc.bp.utils.Page;

/**
 * @Description:
 * @Author: 张冲
 * @Company: http://markzc.github.io
 * @CreateDate: 2016/12/1
 */
public interface BaseDao {

	// 查询所有，带条件查询
	public <T> List<T> find(String hql, Class<T> entityClass, Object[] params);

	// 获取一条记录
	public <T> T get(Class<T> entityClass, Serializable id);

	// 分页查询，将数据封装到一个page分页工具类对象
	public <T> Page<T> findPage(String hql, Page<T> page, Class<T> entityClass, Object[] params);

	// 新增和修改保存
	public <T> void saveOrUpdate(T entity);

	// 批量新增和修改保存
	public <T> void saveOrUpdateAll(Collection<T> entitys);

	// 单条删除，按id
	public <T> void deleteById(Class<T> entityClass, Serializable id);

	// 批量删除
	public <T> void delete(Class<T> entityClass, Serializable[] ids);

	// 寻找当前模块下的所有有权限的 且 等级比当前登录人小的 人员信息
	public List<User> findUser(Task model, String moduleId, User user);

}