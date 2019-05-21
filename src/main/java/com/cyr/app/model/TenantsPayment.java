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
@Table(name="tb_tenants_payment")
@Getter
@Setter
@NoArgsConstructor
@ToString
public class TenantsPayment {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="tenant_payment_id")
	private int tenantPaymentId;
	 @OneToOne(fetch = FetchType.LAZY, optional = false)
	    @JoinColumn(name = "tenantId", nullable = false)
	private Tenant tenant;
	private double rent;
	private double otherExpenses;
	private Date paymentDate;
	private String paymentType;
	private double lastPaid;
	private double dueAmount;
	private String comments;
	private Date createdDate;
	private Date modifiedDate;
	
	public TenantsPayment(int tenantPaymentId, double rent, double otherExpenses, Date paymentDate,
			String paymentType, double lastPaid, double dueAmount, String comments, Date createdDate,
			Date modifiedDate) {
		super();
		this.tenantPaymentId = tenantPaymentId;
		this.rent = rent;
		this.otherExpenses = otherExpenses;
		this.paymentDate = paymentDate;
		this.paymentType = paymentType;
		this.lastPaid = lastPaid;
		this.dueAmount = dueAmount;
		this.comments = comments;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
	}
	

	
}