package service.employee;

import model.customer.Customer;
import model.employee.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> selectAll();
    boolean editEmployee(Employee employee);
    boolean newEmployee(Employee employee);
    boolean deleteEmployee(int id);
    List<Employee> searchEmployee(String  name);
    Employee selectById(int id);
}
