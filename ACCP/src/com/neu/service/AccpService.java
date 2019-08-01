package com.neu.service;

import java.util.List;

import com.neu.entity.Accp;

public interface AccpService {
	public List<Accp> getByPersonAndType(String name , String idcard , String type) throws Exception;
}
