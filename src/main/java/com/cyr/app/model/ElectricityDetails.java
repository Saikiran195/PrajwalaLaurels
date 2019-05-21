package com.cyr.app.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
@Table(name="tb_electricity_details")
@Getter
@Setter
@NoArgsConstructor
@ToString
public class ElectricityDetails {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int electricityDetailsId;
	@OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "tenantId", nullable = false)
    private Tenant tenant;
	private double scNo;
	private double units;
	private double electricityBill;
	private Date electricityBillPaymentDate;
	private double lastPaid;
	private double dueAmount;
	private String comments;
	private Date createdDate;
	private Date modifiedDate;
	
	public ElectricityDetails(int electricityDetailsId, double scNo, double units,
			double electricityBill, Date electricityBillPaymentDate, double lastPaid, double dueAmount, String comments,
			Date createdDate, Date modifiedDate) {
		super();
		this.electricityDetailsId = electricityDetailsId;
		this.scNo = scNo;
		this.units = units;
		this.electricityBill = electricityBill;
		this.electricityBillPaymentDate = electricityBillPaymentDate;
		this.lastPaid = lastPaid;
		this.dueAmount = dueAmount;
		this.comments = comments;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
	}
	
	
	
	
}