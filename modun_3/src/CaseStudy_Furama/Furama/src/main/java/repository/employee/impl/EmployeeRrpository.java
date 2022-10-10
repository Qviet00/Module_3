package repository.employee.impl;

import model.employee.Employee;
import repository.Database;
import repository.employee.IEmployeeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRrpository implements IEmployeeRepository {
    private static final String SELEC_ALL = " select * from employee";
    private static final String SECLEC_BY_ID = "select * from employe where id = ?";
    private static final String EDIT_EMPLOYEE = "update employee set `name`=?, birthday=?, id_card=?," +
            " salary=?, phone_number=?, email=?,address=?, position_id=?, education_degree_id=?, division_id=?,userName=?;";
    private static final String DELETE_EMPLOYEE = "delete from employee where id?";
    private static final String SEARCH_EMPLOYEE = "select * from employee where like `name`=? ";
    private static final String NEW_EMPLOYEE = "insert into employee (`name`, birthday, id_card, salary, phone_number," +
            " email, address, position_id, education_degree_id, division_id,userName;) value(?,?,?,?,?,?,?,?,?,?,?)";


    @Override
    public List<Employee> selectAll() {
        List<Employee> employees = new ArrayList<>();
        Connection connection = Database.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELEC_ALL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String birthday = rs.getString("birthday");
                String idCard = rs.getString("id_card");
                Double salary = rs.getDouble("salary");
                String phone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int positionId = rs.getInt("position_id");
                int educationDegreeId = rs.getInt("education_degree_id");
                int divisionId = rs.getInt("division_id");
                String userName = rs.getString("username");
                employees.add(new Employee(id, name, birthday, idCard, salary, phone, email, address, positionId, educationDegreeId, divisionId,userName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    @Override
    public List<Employee> searchEmployee(String name) {
        List<Employee> employees = new ArrayList<>();
        Connection connection = Database.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(SEARCH_EMPLOYEE);
            preparedStatement.setString(1,name);
            ResultSet rs= preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String birthday = rs.getString("birthday");
                String idCard = rs.getString("id_card");
                Double salary = rs.getDouble("salary");
                String phone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int positionId = rs.getInt("position_id");
                int educationDegreeId = rs.getInt(" education_degree_id");
                int divisionId = rs.getInt(" division_id");
                String userName = rs.getString("username");
                employees.add(new Employee(id, name, birthday, idCard, salary, phone, email, address, positionId, educationDegreeId, divisionId,userName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return employees;
    }

    @Override
    public boolean newEmployee(Employee employee) {

        Connection connection = Database.getConnection();
        PreparedStatement preparedStatement;
        boolean news=false;
        try{
            preparedStatement=connection.prepareStatement(NEW_EMPLOYEE);
            preparedStatement.setString(1,employee.getEmployeeName());
            preparedStatement.setString(2,employee.getEmployeeBirthday());
            preparedStatement.setString(3,employee.getEmployeeIdCard());
            preparedStatement.setDouble(4,employee.getEmployeeSalary());
            preparedStatement.setString(5,employee.getEmployeePhone());
            preparedStatement.setString(6,employee.getEmployeeEmail());
            preparedStatement.setString(7,employee.getEmployeeAddress());
            preparedStatement.setInt(8,employee.getPositionId());
            preparedStatement.setInt(9,employee.getEducationDegreeId());
            preparedStatement.setInt(10,employee.getDivisionId());
            news = preparedStatement.executeUpdate()>0;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        return news;
    }


    @Override
    public boolean editEmployee(Employee employee) {
        Connection connection = Database.getConnection();
        PreparedStatement preparedStatement;
        boolean edits=false;
        try{
            preparedStatement=connection.prepareStatement(EDIT_EMPLOYEE);
            preparedStatement.setString(1,employee.getEmployeeName());
            preparedStatement.setString(2,employee.getEmployeeBirthday());
            preparedStatement.setString(3,employee.getEmployeeIdCard());
            preparedStatement.setDouble(4,employee.getEmployeeSalary());
            preparedStatement.setString(5,employee.getEmployeePhone());
            preparedStatement.setString(6,employee.getEmployeeEmail());
            preparedStatement.setString(7,employee.getEmployeeAddress());
            preparedStatement.setInt(8,employee.getPositionId());
            preparedStatement.setInt(9,employee.getEducationDegreeId());
            preparedStatement.setInt(10,employee.getDivisionId());
            edits = preparedStatement.executeUpdate()>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return edits;
    }

    @Override
    public boolean deleteEmployee(int id) {
        boolean deleteEmployee = false;
        Connection connection = Database.getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement(DELETE_EMPLOYEE);
            statement.setInt(1,id);
            deleteEmployee= statement.executeUpdate()>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return deleteEmployee;
    }

    @Override
    public Employee selectById(int id) {
        Employee  employee = null;
        Connection connection= Database.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(SECLEC_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet rs=preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String birthday = rs.getString("birthday");
                String idCard = rs.getString("id_card");
                Double salary = rs.getDouble("salary");
                String phone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int positionId = rs.getInt("position_id");
                int educationDegreeId = rs.getInt(" education_degree_id");
                int divisionId = rs.getInt(" division_id");
                String userName = rs.getString("username");
                employee = new Employee(name, birthday, idCard, salary, phone, email, address, positionId, educationDegreeId, divisionId,userName);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employee;
    }
}
