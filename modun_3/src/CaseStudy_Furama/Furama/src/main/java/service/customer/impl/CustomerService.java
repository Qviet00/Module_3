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
        return iCustomerRepository.createCustomer(customer);
    }

    @Override
    public Customer editCustomer(int id) {
        return iCustomerRepository.editCustomer(id);
    }

    @Override
    public boolean deteleCustomer(int id) {
        return iCustomerRepository.deleteCtomer(id);
    }

}
