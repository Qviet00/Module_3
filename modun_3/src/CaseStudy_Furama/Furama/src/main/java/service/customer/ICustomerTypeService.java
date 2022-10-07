package service.customer;

import model.customer.Customer;

import java.util.List;

public interface ICustomerTypeService {
    List<Customer> findAll();
}
