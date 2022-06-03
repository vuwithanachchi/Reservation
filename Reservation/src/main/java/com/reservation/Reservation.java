package com.reservation;

public class Reservation {
	public class ReservationDBUtil {

	}

	private String phoneNo;
	private String arrDate;
	private String depDate;
	private String totRooms;
	private String children;
	private String luxRoom;
	private String cupRoom;
	private String stanRoom;
	private String famRoom;
	private String adults;
	private String country;
	private String fname;
	private String lname;
	private String comname;
	private String address;
	private String city;
	private String email;
	private String notes;
	
	public Reservation(String phoneNo, String arrDate, String depDate, String totRooms, String children,
			String luxRoom, String cupRoom, String stanRoom, String famRoom, String adults, String country, String fname,
			String lname, String comname, String address, String city, String email, String notes) {
		this.phoneNo = phoneNo;
		this.arrDate = arrDate;
		this.depDate = depDate;
		this.totRooms = totRooms;
		this.children = children;
		this.luxRoom = luxRoom;
		this.cupRoom = cupRoom;
		this.stanRoom = stanRoom;
		this.famRoom = famRoom;
		this.adults = adults;
		this.country = country;
		this.fname = fname;
		this.lname = lname;
		this.comname = comname;
		this.address = address;
		this.city = city;
		this.email = email;
		this.notes = notes;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public String getArrDate() {
		return arrDate;
	}

	public String getDepDate() {
		return depDate;
	}

	public String getTotRooms() {
		return totRooms;
	}

	public String getChildren() {
		return children;
	}

	public String getLuxRoom() {
		return luxRoom;
	}

	public String getCupRoom() {
		return cupRoom;
	}

	public String getStanRoom() {
		return stanRoom;
	}

	public String getFamRoom() {
		return famRoom;
	}

	public String getAdults() {
		return adults;
	}

	public String getCountry() {
		return country;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getComname() {
		return comname;
	}

	public String getAddress() {
		return address;
	}

	public String getCity() {
		return city;
	}

	public String getEmail() {
		return email;
	}

	public String getNotes() {
		return notes;
	}
	


}
