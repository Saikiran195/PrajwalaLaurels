package com.cyr.app.model;

import javax.persistence.Column;
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
@Table(name = "REPORT")
@Getter
@Setter
@NoArgsConstructor
@ToString
public class ReportBean {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "report_id")
	private int reportId;
	private String name;
	private String queries;
	private String comments;

	public ReportBean(int reportId, String name, String queries, String comments) {
		super();
		this.reportId = reportId;
		this.name = name;
		this.queries = queries;
		this.comments = comments;
	}

}
