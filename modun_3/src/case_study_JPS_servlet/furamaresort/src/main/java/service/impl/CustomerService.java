package service.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements ICustomerService {
    private static ICustomerRepository  customerRepository = new CustomerRepository();
    @Override
    public List<Customer> display() {
        return customerRepository.display();
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }


    @Override
    public Map<String,String> update(Customer customer) {
        Map<String,String> errorMap = new HashMap<>();
        if (!customer.getName().isEmpty()){
            if (!customer.getName().matches("^[A-Z][A-Z a-z]+$")){
                errorMap.put("nameErr","nhap dung dinh dang");
            }
        }else {
            errorMap.put("nameErr","phai nhap chu");
        }
        if (!customer.getIden().isEmpty()){
            if (!customer.getIden().matches("^[0-9]{9}|[0-9]{10}$")){
                errorMap.put("idenErr","nhap dung dinh dang");
            }
        }else {
            errorMap.put("idenErr","phai nhap chu");
        }
        if (!customer.getEmail().isEmpty()){
            if (!customer.getEmail().matches("^[A-Za-z]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$")) {
                errorMap.put("emailErr", "nhap dung dinh dang");
            }
        }else {
            errorMap.put("emailErr","phai nhap chu");
        }


//            if (!customer.getDayOfBirth().matches("^[0-9]{2}//[0-9]{2}//[1-9]{4}$")){
//                errorMap.put("birthErr","nhap dung dinh dang");
//            }else {
//                errorMap.put("birthErr","phai nhap chu");
//            }

        if (errorMap.size()==0){
            customerRepository.update(customer);
        }
        return errorMap;
    }

    @Override
    public void delete(int id) {
     customerRepository.delete(id);
    }

    @Override
    public List<CustomerType> listType() {
        return  customerRepository.listType();
    }

    @Override
   public Map<String,String> AddCustomer(Customer customer) {
     Map<String,String> errorMap = new HashMap<>();
       if (!customer.getName().isEmpty()){
           if (!customer.getName().matches("^[A-Z][A-Z a-z]+$")){
               errorMap.put("nameErr","nhap dung dinh dang");
           }
       }else {
              errorMap.put("nameErr","phai nhap chu");
           }
         if (!customer.getIden().isEmpty()){
           if (!customer.getIden().matches("[0-9]{9}|[0-9]{10}")){
               errorMap.put("idenErr","nhap dung dinh dang");
           }
         }else {
               errorMap.put("idenErr","phai nhap chu");
           }
         if (!customer.getEmail().isEmpty()){
           if (!customer.getEmail().matches("^[A-Za-z]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$")) {
               errorMap.put("emailErr", "nhap dung dinh dang");
           }
         }else {
               errorMap.put("emailErr","phai nhap chu");
           }

//           if (!customer.getDayOfBirth().matches("[0-9]{2}//[0-9]{2}//[1-9]{4}")){
//               errorMap.put("birthErr","nhap dung dinh dang");
//           }else {
//               errorMap.put("birthErr","phai nhap chu");
//           }


       if (errorMap.size()==0){
           customerRepository.AddCustomer(customer);
       }

          return errorMap;
    }
}
