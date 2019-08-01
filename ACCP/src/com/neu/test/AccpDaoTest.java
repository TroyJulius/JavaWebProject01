package com.neu.test;

import java.util.List;

import org.junit.jupiter.api.Test;

import com.neu.dao.AccpDao;
import com.neu.dao.AccpDaoImpl;
import com.neu.entity.Accp;

public class AccpDaoTest {
	
	@Test
	public void testGest() throws Exception{
		AccpDao accpDao = new AccpDaoImpl();
		String name = "Â¬ê»";
		String idcard = "210104199305240015";
		String type = "ACCP";
		List<Accp> list = accpDao.getByPersonAndType(name, idcard, type);
		System.out.println(list);
		return;
	}
	public static void main(String[] args) {
		AccpDao accpDao = new AccpDaoImpl();
		String name = "Â¬ê»";
		String idcard = "210104199305240015";
		String type = "ACCP";
		List<Accp> list;
		try {
			list = accpDao.getByPersonAndType(name, idcard, type);
			System.out.println(list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return;
	}

}
