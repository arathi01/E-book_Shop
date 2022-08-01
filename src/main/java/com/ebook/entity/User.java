package com.ebook.entity;

public class User {

	private int id;
	private String name;
	private String email;
	private String Phoneno;
	private String password;
	private String address;
	private String landmark;
	private String city;
	private String county;
	private String eircode;
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhoneno() {
		return Phoneno;
	}


	public void setPhoneno(String phoneno) {
		Phoneno = phoneno;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getLandmark() {
		return landmark;
	}


	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getCounty() {
		return county;
	}


	public void setCounty(String county) {
		this.county = county;
	}


	public String getEircode() {
		return eircode;
	}


	public void setEircode(String eircode) {
		this.eircode = eircode;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", Phoneno=" + Phoneno + ", password="
				+ password + ", address=" + address + ", landmark=" + landmark + ", city=" + city + ", county=" + county
				+ ", eircode=" + eircode + "]";
	}
	
	
}
	