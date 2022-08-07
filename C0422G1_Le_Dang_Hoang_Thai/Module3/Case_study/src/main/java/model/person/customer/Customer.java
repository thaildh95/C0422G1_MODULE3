package model.person.customer;

import model.person.Person;

import java.sql.Date;
import java.time.LocalDate;

public class Customer extends Person {
    private int customerId;
    private int typeCustomerId;
    private int gender;

    public Customer(int customerId, int typeCustomerId, int gender) {
        this.customerId = customerId;
        this.typeCustomerId = typeCustomerId;
        this.gender = gender;
    }

    public Customer(int customerId, int typeCustomerId, String name, Date dayOfBirth, int gender, String idCard, String phoneNumber, String email, String address ) {
        super(name, dayOfBirth, idCard, phoneNumber, email, address);
        this.customerId = customerId;
        this.typeCustomerId = typeCustomerId;
        this.gender = gender;
    }




    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getTypeCustomerId() {
        return typeCustomerId;
    }

    public void setTypeCustomerId(int typeCustomerId) {
        this.typeCustomerId = typeCustomerId;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }
}
