package com.cyr.app.model;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "tb_tenants")
@Setter
@Getter
@NoArgsConstructor
@ToString
public class Tenant {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int tenantId;
	private String tenantName;
	private String mobileNumber;
	private String email;
	private String address;
	private LocalDate  joiningDate;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "floorId")
	private FloorBean floor;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "flatId")
	private FlatBean flat;

	private double advancePayment;

	private double rent;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "statusId")
	private StatusBean status;
	private String comments;

	private LocalDate  createdDate;

	private LocalDate  modifiedDate;

	public Tenant(int tenantId, String tenantName, String mobileNumber, String email, String address,
			LocalDate  joiningDate, FloorBean floor, FlatBean flat, double advancePayment, double rent, StatusBean status,
			String comments, LocalDate  createdDate, LocalDate  modifiedDate) {
		super();
		this.tenantId = tenantId;
		this.tenantName = tenantName;
		this.mobileNumber = mobileNumber;
		this.email = email;
		this.address = address;
		this.joiningDate = joiningDate;
		this.floor = floor;
		this.flat = flat;
		this.advancePayment = advancePayment;
		this.rent = rent;
		this.status = status;
		this.comments = comments;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
	}

	
	
	

}