package repository.customer;

import model.customer.Customer;

import java.util.List;
import java.util.Map;

public interface ICustomerRepository {
    List<Customer> selectAll();
    boolean editCustomer(Customer customer);
    boolean newCustomer(Customer customer);
    boolean deleteCtomer(int id);
    List<Customer> searchCustomer(String  name);
    Customer customerById(int id);


}
