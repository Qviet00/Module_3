package repository.employee;

import model.employee.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> selectAll();
    List<Employee> searchEmployee(String name);
    boolean newEmployee(Employee employee);
    boolean editEmployee(Employee employee);
    boolean deleteEmployee(int id);
    Employee selectById(int id);

}
