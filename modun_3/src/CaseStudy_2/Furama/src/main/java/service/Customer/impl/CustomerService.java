package service.Customer.impl;

import model.Customer;
import service.Customer.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    @Override
    public List<Customer> finAllCustomer() {
        return null;
    }

    @Override
    public boolean createCustomer(Customer customer) {
        return false;
    }

    @Override
    public boolean editCustomer(Customer customer) {
        return false;
    }

    @Override
    public Customer findCustomerById(int id) {
        return null;
    }

    @Override
    public boolean deleteCustomer(int customerId) {
        return false;
    }
}
