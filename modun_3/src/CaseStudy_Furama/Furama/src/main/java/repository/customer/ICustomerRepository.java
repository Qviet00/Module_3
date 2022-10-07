package repository.customer;

import model.customer.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerRepository {
    List<Customer> selectAll();
    Customer editCustomer(int id);
    boolean createCustomer(Customer customer);
    boolean deleteCtomer(int id);
}
