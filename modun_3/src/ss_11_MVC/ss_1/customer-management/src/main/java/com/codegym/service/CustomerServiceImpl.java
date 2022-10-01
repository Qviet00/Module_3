package com.codegym.service;

import com.codegym.model.Customer;
import com.codegym.service.Impl.CustomerService;

import java.util.*;

public class CustomerServiceImpl implements CustomerService {

    private static final Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "Dell", "D2412","Mới", "12000000"));
        customers.put(2, new Customer(2, "Ausus", "S2141","99%", "13000000"));
        customers.put(3, new Customer(3, "Msi","M2141", "Mới", "7000000"));
        customers.put(4, new Customer(4, "Toshiba","T2141", "98%", "8500000"));
        customers.put(5, new Customer(5, "Apple","L2141", "Mới", "9000000"));
        customers.put(6, new Customer(6, "Acer","A2141", "Tốt", "10000000"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public List<Customer> searchByName(String name) {
         List<Customer> list = new ArrayList<>();
        Set<Integer> set = customers.keySet();
        for (Integer integer : set
        ) {
            if (customers.get(integer).getName().contains(name)) {
                list.add(customers.get(integer));
            }
        }
        return list;
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}