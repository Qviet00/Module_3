package com.codegym.service.Impl;

import com.codegym.model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll();
    List<Customer> searchByName(String name);
    void save(Customer customer);

    Customer findById(int id);

    void update(int id, Customer customer);

    void remove(int id);
}
