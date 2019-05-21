package com.cyr.app.model;

import java.sql.Date;

import javax.persistence.Column;
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
@Table(name="tb_floor_type")
@Setter
@Getter
@NoArgsConstructor
@ToString
public class FloorBean {

	@Id
	private int floorId;
	private String floorType;
	private Date createdDate;
	private Date modifiedDate;
	
	public FloorBean(int floorId, String floorType, Date createdDate, Date modifiedDate) {
		super();
		this.floorId = floorId;
		this.floorType = floorType;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
	}
	
	
}
