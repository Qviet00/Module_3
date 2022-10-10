package service.customer;

import model.customer.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> selectAll();

    boolean newCustomer(Customer customer);

    boolean editCustomer(Customer customer);
    Customer editById(int id);

    boolean deteleCustomer(int id);
   List<Customer> searchCustomer(String name);
   Map<String,String> add(Customer customer);

}
