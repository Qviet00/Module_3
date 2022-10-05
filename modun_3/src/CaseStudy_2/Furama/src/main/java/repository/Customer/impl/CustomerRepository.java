package repository.Customer.impl;

import model.Customer;
import repository.Customer.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private static final String URL = "jdbc:mysql://localhost:3306/case_study_jsp_servlet"; // sửa lại tên của csdl
    private static final String USER = "root";// mặc định của mysql
    private static final String PASS = "959704";// do cài đặt khi cài đặt mysql

    public static Connection getConnectDB() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASS);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return connection;
    }
    private static final String FIND_ALL = "select * from customer where is_delete = 0;";
    private static final String INSERT = "insert into customer(customer_name, customer_birthday, customer_gender, " +
            "customer_id_card, customer_phone, customer_email, customer_address, customer_type_id) " +
            "values(?,?,?,?,?,?,?,?);";
    private static final String UPDATE = "update customer set customer_name = ?, customer_birthday = ?, " +
            "customer_gender = ?, customer_id_card = ?, customer_phone = ?, customer_email = ?, customer_address = ?, " +
            "customer_type_id = ? where customer_id = ? and is_delete = 0;";

    private static final String FIND_BY_ID = "select * from customer where customer_id = ? and is_delete = 0;";
    private static final String DELETE = "update customer set is_delete = 1 where customer_id = ? and is_delete = 0;";
    private static final String FIND_CUSTOMER_SQL = "select * from customer where customer_name like ? " +
            "and customer_address like ? and customer_phone like ? and is_delete = 0";

    @Override
    public List<Customer> finAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerId=resultSet.getInt("customer_id");
                String customerName = resultSet.getString("customer_name");
                String customerBirthday = resultSet.getString("customer_birthday");
                Boolean customerGender =resultSet.getBoolean("customer_gender");
                String customerIdCard = resultSet.getString("customer_id_card");
                String customerPhone = resultSet.getString("customer_phone");
                String customerEmail = resultSet.getString("customer_email");
                String customerAddress = resultSet.getString("customer_address");
                int customerTypeId = resultSet.getInt("customer_type_id");
                Customer customer= new Customer(customerId,customerName,customerBirthday,customerGender,customerIdCard,customerPhone,
                        customerEmail,customerAddress,customerTypeId);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }
    @Override
    public boolean createCustomer(Customer customer) {
        System.out.println(INSERT);
        Connection connection = getConnectDB();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(INSERT);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public boolean editCustomer(Customer customer) {
        return false;
    }

    @Override
    public Customer findCustomerById(int id) {
        return null;
    }

    @Override
    public boolean deleteCustomer(int customerId) {
        return false;
    }

    @Override
    public List<Customer> findCustomer(String name, String address, String phone) {
        return null;
    }
}
