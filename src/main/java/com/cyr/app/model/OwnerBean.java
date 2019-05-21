package com.cyr.app.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="tb_owner_expenses")
@Getter
@Setter
@NoArgsConstructor
@ToString
public class OwnerBean {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int ownerExpensesId;
	private String expenseType;
	private double expenseAmount;
	private Date expensePaymentDate;
	private String comments;
	private Date createdDate;
	private Date modifiedDate;

	public OwnerBean(int ownerExpensesId, String expenseType, double expenseAmount, Date expensePaymentDate,
			String comments, Date createdDate, Date modifiedDate) {
		super();
		this.ownerExpensesId = ownerExpensesId;
		this.expenseType = expenseType;
		this.expenseAmount = expenseAmount;
		this.expensePaymentDate = expensePaymentDate;
		this.comments = comments;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
	}
	
	

}
