package service.customer.impl;

import model.customer.Customer;
import repository.customer.ICustomerRepository;
import repository.customer.impl.CustomerRepository;
import service.customer.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    public ICustomerRepository iCustomerRepository = new CustomerRepository();

    @Override
    public List<Customer> selectAll() {
        return iCustomerRepository.selectAll();
    }

    @Override
    public boolean newCustomer(Customer customer) {
        return iCustomerRepository.newCustomer(customer);
    }

    @Override
    public boolean editCustomer(Customer customer) {
        return iCustomerRepository.editCustomer(customer);
    }

    @Override
    public Customer editById(int id) {
        return iCustomerRepository.customerById(id);
    }

    @Override
    public boolean deteleCustomer(int id) {
        return iCustomerRepository.deleteCtomer(id);
    }

    @Override
    public List<Customer> searchCustomer(String name) {return iCustomerRepository.searchCustomer(name);

    }

}
