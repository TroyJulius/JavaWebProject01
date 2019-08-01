package com.neu.entity;
	/*create table accp(
	id varchar(30) primary key ,
	type varchar(30) not null , 
	name varchar(30) not null , 
	idcard varchar(30) not NULL
	)*/
public class Accp {
	private String id;
	private String type;
	private String name;
	private String idcard;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public Accp(String id, String type, String name, String idcard) {
		super();
		this.id = id;
		this.type = type;
		this.name = name;
		this.idcard = idcard;
	}
	public Accp() {
		super();
	}
	@Override
	public String toString() {
		return "Accp [id=" + id + ", type=" + type + ", name=" + name + ", idcard=" + idcard + "]";
	}
	
}
