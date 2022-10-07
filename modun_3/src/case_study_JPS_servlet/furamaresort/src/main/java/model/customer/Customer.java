package model.customer;

import java.util.Date;

public class Customer {
    private int id;
    private int customerType;
    private String name;
    private String dayOfBirth;
    private boolean gender;
    private String iden;
    private  int phone;
    private String email;
    private String address;

    public Customer() {
    }

    public Customer(int customerType, String name, String dayOfBirth, boolean gender, String iden, int phone, String email, String address) {
        this.customerType = customerType;
        this.name = name;
        this.dayOfBirth = dayOfBirth;
        this.gender = gender;
        this.iden = iden;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public Customer(int id, int customerType, String name,
                    String dayOfBirth, boolean gender, String iden, int phone, String email, String address) {
        this.id = id;
        this.customerType = customerType;
        this.name = name;
        this.dayOfBirth = dayOfBirth;
        this.gender = gender;
        this.iden = iden;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerType() {
        return customerType;
    }

    public void setCustomerType(int customerType) {
        this.customerType = customerType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDayOfBirth() {
        return dayOfBirth;
    }

    public void setDayOfBirth(String dayOfBirth) {
        this.dayOfBirth = dayOfBirth;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getIden() {
        return iden;
    }

    public void setIden(String iden) {
        this.iden = iden;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}