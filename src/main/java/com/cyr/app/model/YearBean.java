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
@Table(name="tb_year_type",
uniqueConstraints = {@UniqueConstraint(name="year_type_uc",columnNames = {"yearType"})})
@Setter
@Getter
@NoArgsConstructor
@ToString
public class YearBean {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="year_id")
	private int  yearId;
	private String yearType;
	private Date createdDate;
	private Date modifiedDate;
	
	public YearBean(int yearId, String yearType, Date createdDate, Date modifiedDate) {
		super();
		this.yearId = yearId;
		this.yearType = yearType;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
	}
	
	
}
