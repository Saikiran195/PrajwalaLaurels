package com.cyr.app.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="tb_flat_type")
@Setter
@Getter
@NoArgsConstructor
@ToString
public class FlatBean {
	
	@Id
	//@GeneratedValue(strategy=GenerationType.AUTO)
	private int flatId;
	private String flatType;
	private Date createdDate;
	private Date modifiedDate;
	
	public FlatBean(int flatId, String flatType, Date createdDate, Date modifiedDate) {
		super();
		this.flatId = flatId;
		this.flatType = flatType;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
	}
	
	

}
