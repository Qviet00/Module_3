package service.Customer;

import model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> finAllCustomer();
    boolean createCustomer(Customer customer);
    boolean editCustomer(Customer customer);
    public  Customer findCustomerById(int id);
    boolean deleteCustomer (int customerId);
}
