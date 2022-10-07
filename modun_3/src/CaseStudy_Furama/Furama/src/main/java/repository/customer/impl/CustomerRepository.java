package repository.customer.impl;

import model.customer.Customer;
import repository.customer.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama_servlet";
    private String jdbcUsername = "root";
    private String jdbcPassword = "viet231993";

    private static final String FIND_ALL = "select * from customer";
    private static final String INSERT = "insert into customer(name, birthday, gender, " +
            "id_card, phone_number, email, address, customer_type_id) " +
            "values(?,?,?,?,?,?,?,?);";
    private static final String UPDATE = "select * from customer where id=?";
    private static final String DELETE = "delete from users where id = ?;";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public List<Customer> selectAll() {
        List<Customer> customers = new ArrayList<>();
        try {
            Connection connection = getConnection();
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
    public Customer editCustomer(int id) {
        Customer customer = null;
        try{
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setInt(1,id);
            ResultSet rs=preparedStatement.executeQuery();
            while (rs.next()){
                String name = rs.getString("name");
                String birthday = rs.getString("birthday");
                int gender = rs.getInt("gender");
                String idCard = rs.getString("id_card");
                String phone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int typeId = rs.getInt("customer_type_id");
                customer =new Customer(id,name,birthday,gender,idCard,phone,email,address,typeId);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }

    @Override
    public boolean createCustomer(Customer customer) {
        Connection connection = getConnection();
        PreparedStatement preparedStatement;
        boolean create=false;
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
            create = preparedStatement.executeUpdate()>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
       return create;
    }

    @Override
    public boolean deleteCtomer(int id){
        boolean rowDelete=false;
        Connection connection =getConnection();
        try {
            PreparedStatement statement=connection.prepareStatement(DELETE);
            statement.setInt(1,id);
            rowDelete = statement.executeUpdate()>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }return rowDelete;
    }

}
