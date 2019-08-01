package com.neu.dao;

import java.util.List;

import com.neu.entity.Accp;

public interface AccpDao {
	public List<Accp> getByPersonAndType(String name , String idcard , String type) throws Exception;
}
