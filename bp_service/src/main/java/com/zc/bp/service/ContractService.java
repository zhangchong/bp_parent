package com.zc.bp.service;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;


import com.zc.bp.domain.Contract;
import com.zc.bp.utils.Page;

public interface ContractService {

	//查询所有，带条件查询
	public  List<Contract> find(String hql, Class<Contract> entityClass, Object[] params);
	//获取一条记录
	public  Contract get(Class<Contract> entityClass, Serializable id);
	//分页查询，将数据封装到一个page分页工具类对象
	public  Page<Contract> findPage(String hql, Page<Contract> page, Class<Contract> entityClass, Object[] params);
	
	//新增和修改保存
	public  void saveOrUpdate(Contract entity);

	//批量删除
	public void delete(Class<Contract> entityClass, Serializable[] ids);
}
