package service.customer;

import model.customer.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> selectAll();

    boolean newCustomer(Customer customer);

    Customer editCustomer(int id);
    boolean deteleCustomer(int id);

}
