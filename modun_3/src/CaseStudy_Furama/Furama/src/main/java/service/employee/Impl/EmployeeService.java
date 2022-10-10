package service.employee.Impl;

import model.employee.Employee;
import repository.employee.IEmployeeRepository;
import repository.employee.impl.EmployeeRrpository;
import service.employee.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    IEmployeeRepository iEmployeeRepository = new EmployeeRrpository();
    @Override
    public List<Employee> selectAll() {
        return iEmployeeRepository.selectAll();
    }

    @Override
    public List<Employee> searchEmployee(String name) {
        return iEmployeeRepository.searchEmployee(name);
    }

    @Override
    public boolean newEmployee(Employee employee) {
        return iEmployeeRepository.newEmployee(employee);
    }

    @Override
    public boolean editEmployee(Employee employee) {
        return iEmployeeRepository.editEmployee(employee);
    }

    @Override
    public boolean deleteEmployee(int id) {
        return iEmployeeRepository.deleteEmployee(id);
    }

    @Override
    public Employee selectById(int id) {
        return iEmployeeRepository.selectById(id);
    }
}
