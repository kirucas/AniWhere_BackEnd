package com.animal.aniwhere_back.service;

public class ReservationDTO {

	private String rv_no;
	private String mem_no;
	private String store_no;
	private java.sql.Date apply_date; // 신청일
	private java.sql.Date booking_date; // 예약일
	
	// 신청자의 이름 저장을 위한 속성 추가
	private String mem_name;

	public String getRv_no() {
		return rv_no;
	}//////////

	public void setRv_no(String rv_no) {
		this.rv_no = rv_no;
	}//////////

	public String getMem_no() {
		return mem_no;
	}//////////

	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}//////////

	public String getStore_no() {
		return store_no;
	}//////////

	public void setStore_no(String store_no) {
		this.store_no = store_no;
	}//////////

	public java.sql.Date getApply_date() {
		return apply_date;
	}//////////

	public void setApply_date(java.sql.Date apply_date) {
		this.apply_date = apply_date;
	}//////////

	public java.sql.Date getBooking_date() {
		return booking_date;
	}//////////

	public void setBooking_date(java.sql.Date booking_date) {
		this.booking_date = booking_date;
	}//////////

	public String getMem_name() {
		return mem_name;
	}//////////

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}//////////
	
}//////////////////// ReservationDTO class
