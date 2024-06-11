package com.starkindustries;

public class User 
{
	public int id,age;
	public String name,contact,nationality;
	public User(int id,String name,int age,String contact,String nationality)
	{
		this.id=id;
		this.name=name;
		this.age=age;
		this.contact=contact;
		this.nationality=nationality;
	}
	public User(String name,int age,String contact,String nationality)
	{
		this.name=name;
		this.age=age;
		this.contact=contact;
		this.nationality=nationality;
	}
	public User()
	{}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
}
