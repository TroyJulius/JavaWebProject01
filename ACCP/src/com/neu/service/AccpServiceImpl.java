package com.neu.service;

import java.util.List;

import com.neu.dao.AccpDao;
import com.neu.dao.AccpDaoImpl;
import com.neu.entity.Accp;

public class AccpServiceImpl implements AccpService {

	@Override
	public List<Accp> getByPersonAndType(String name, String idcard, String type) throws Exception {
		AccpDao accpDao = new AccpDaoImpl();
		
		List<Accp> list = accpDao.getByPersonAndType(name, idcard, type);
		
		return list;
	}

}
