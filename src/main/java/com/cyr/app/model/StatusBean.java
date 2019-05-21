package com.cyr.app.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="tb_status_type")
@Setter
@Getter
@NoArgsConstructor
@ToString
public class StatusBean {

	@Id
	private int  statusId;
	private String statusType;
	
	public StatusBean(int statusId, String statusType) {
		super();
		this.statusId = statusId;
		this.statusType = statusType;
	}
	
	
}
