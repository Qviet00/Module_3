package com.codegym.model;

public class Customer {
    private int id;
    private String name;
    private String startus;
    private String model;
    private String price;


    public Customer() {
    }



    public Customer(int id, String name, String model, String startus, String price) {
        this.id = id;
        this.model=model;
        this.name = name;
        this.startus = startus;
        this.price = price;
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

    public String getStartus() {
        return startus;
    }

    public void setStartus(String startus) {
        this.startus = startus;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }
}
