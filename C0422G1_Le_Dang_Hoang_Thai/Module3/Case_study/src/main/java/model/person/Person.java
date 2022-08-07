package model.person;

import java.sql.Date;

public abstract class Person {
    private  String name;
    private Date dayOfBirth;
    private String idCard;
    private String phoneNumber;
    private String Email;
    private String address;

    public Person() {
    }

    public Person(String name, Date dayOfBirth, String idCard, String phoneNumber, String email, String address) {
        this.name = name;
        this.dayOfBirth = dayOfBirth;
        this.idCard = idCard;
        this.phoneNumber = phoneNumber;
        Email = email;
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDayOfBirth() {
        return dayOfBirth;
    }

    public void setDayOfBirth(Date dayOfBirth) {
        this.dayOfBirth = dayOfBirth;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
