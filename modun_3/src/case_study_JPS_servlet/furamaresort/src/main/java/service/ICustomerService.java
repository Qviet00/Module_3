package service;

import model.customer.Customer;
import model.customer.CustomerType;

import java.util.List;
import java.util.Map;

public interface ICustomerService {
    List<Customer> display ();
    Customer findById(int id);
    Map<String,String> update (Customer customer);
    void delete(int id);
    List<CustomerType> listType();
    Map<String,String> AddCustomer(Customer customer);
}
