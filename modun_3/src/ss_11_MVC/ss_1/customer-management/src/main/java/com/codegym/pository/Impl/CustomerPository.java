package com.codegym.pository.Impl;

import com.codegym.model.Customer;

import java.util.List;

public interface CustomerPository {
    List<Customer> findAll();
    List<Customer> searchByName(String name);
    void save(Customer customer);

    Customer findById(int id);

    void update(int id, Customer customer);

    void remove(int id);
}
