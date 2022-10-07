package repository;

import model.customer.Customer;
import model.customer.CustomerType;

import java.util.List;

public interface ICustomerRepository {
   List<Customer> display ();
   Customer findById(int id);
   void update (Customer customer);
   void delete(int id);
  List<CustomerType> listType();
  void  AddCustomer(Customer customer);


}
