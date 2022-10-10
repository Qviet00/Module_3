package repository.customer.impl;

import com.mysql.cj.xdevapi.Schema;
import model.customer.Customer;
import repository.Database;
import repository.customer.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private static final String FIND_ALL = "select * from customer";
    private static final String INSERT = "insert into customer(name, birthday, gender, " +
            "id_card, phone_number, email, address, customer_type_id) " +
            "values(?,?,?,?,?,?,?,?);";
    private static final String UPDATE = "update  customer set name=?, birthday=?, gender=?, " +
            "id_card=?, phone_number=?, email=?, address=?, customer_type_id=? where id =? ";
    private static final String DELETE = "delete from customer where id = ?;";
    private static final String SEARCH = "select * from customer where name like ?;";
    private static final String UPDATE_BY_ID = "select *from  customer  where id =?";

    @Override
    public List<Customer> selectAll() {
        List<Customer> customers = new ArrayList<>();
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String birthday = rs.getString("birthday");
                int gender = rs.getInt("gender");
                String idCard = rs.getString("id_card");
                String phone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int typeId = rs.getInt("customer_type_id");
                customers.add(new Customer(id, name, birthday, gender, idCard, phone
                        , email, address, typeId));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customers;
    }


    @Override
    public boolean editCustomer(Customer customer) {
        boolean rowEdit = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement statement = connection.prepareStatement(UPDATE);
            statement.setString(1, customer.getCustomerName());
            statement.setString(2, customer.getCustomerBirthday());
            statement.setInt(3, customer.getCustomerGender());
            statement.setString(4, customer.getCustomerIdCard());
            statement.setString(5, customer.getCustomerPhone());
            statement.setString(6, customer.getCustomerIdCard());
            statement.setString(7, customer.getCustomerAddress());
            statement.setInt(8, customer.getCustomerTypeId());
            statement.setInt(9, customer.getCustomerId());
            rowEdit = statement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowEdit;
    }


    @Override
    public boolean newCustomer(Customer customer) {
        Connection connection = Database.getConnection();
        PreparedStatement preparedStatement;
        boolean create = false;
        try {
            preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, customer.getCustomerName());
            preparedStatement.setString(2, customer.getCustomerBirthday());
            preparedStatement.setInt(3, customer.getCustomerGender());
            preparedStatement.setString(4, customer.getCustomerIdCard());
            preparedStatement.setString(5, customer.getCustomerPhone());
            preparedStatement.setString(6, customer.getCustomerIdCard());
            preparedStatement.setString(7, customer.getCustomerAddress());
            preparedStatement.setInt(8, customer.getCustomerTypeId());
            create = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return create;
    }

    @Override
    public boolean deleteCtomer(int id) {
        boolean rowDelete = false;
        Connection connection = Database.getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement(DELETE);
            statement.setInt(1, id);
            rowDelete = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDelete;
    }

    @Override
    public List<Customer> searchCustomer(String name) {
        List<Customer> customers = new ArrayList<>();
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH);
            preparedStatement.setString(1, name);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String birthday = rs.getString("birthday");
                int gender = rs.getInt("gender");
                String idCard = rs.getString("id_card");
                String phone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int typeId = rs.getInt("customer_type_id");
                customers.add(new Customer(id, name, birthday, gender, idCard, phone, email, address, typeId));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customers;
    }

    @Override
    public Customer customerById(int id) {
        Customer customer = null;
        Connection connection = Database.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String customerName = resultSet.getString("name");
                String customerBirthday = resultSet.getString("birthday");
                int customerGender = resultSet.getInt("gender");
                String customerIdCard = resultSet.getString("id_card");
                String customerPhone = resultSet.getString("phone_number");
                String customerEmail = resultSet.getString("email");
                String customerAddress = resultSet.getString("address");
                int customerTypeId = resultSet.getInt("customer_type_id");
                customer = new Customer(customerName, customerBirthday, customerGender, customerIdCard, customerPhone, customerEmail, customerAddress, customerTypeId);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customer;
    }
}
