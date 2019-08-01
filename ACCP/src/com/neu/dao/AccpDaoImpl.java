package com.neu.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.neu.entity.Accp;
import com.neu.util.DBUtil;

public class AccpDaoImpl implements AccpDao {
	private DBUtil u = new DBUtil();
	@Override
	public List<Accp> getByPersonAndType(String name, String idcard, String type) throws Exception {
		String sql = "select * from accp "
				+ "where name = ? and idcard = ? and type = ?"; 
		Connection c = u.getConnection();
		ResultSet r = u.executeQuery(sql, c, name, idcard , type );//
		List<Accp> list = new ArrayList<>();
		
		if(!r.next()) {
			list = null;
			u.closeConnection(c);
			return list;
			
		}
		do {
			list.add(new Accp(r.getString("id"), type, name, idcard));
		}
		while(r.next());
		
		u.closeConnection(c);
		return list;
	}

}
