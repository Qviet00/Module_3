package repository.Customer;

import model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> finAllCustomer();
    boolean createCustomer(Customer customer);
    boolean editCustomer(Customer customer);
    public  Customer findCustomerById(int id);
    boolean deleteCustomer (int customerId);
    List<Customer> findCustomer(String name, String address, String phone);
}
