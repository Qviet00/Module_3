package repository.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.BaseConnection;
import repository.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private final String SELLECT_ALL = "select*from customer ";
    private final String DELETE = "delete from customer where customer.id = ?";
    private final String FIND_ID = "SELECT * FROM khach_hang where ma_khach_hang= ?";
    private final String UPDATE = "update khach_hang set ma_loai_khach=?,ho_ten = ?,ngay_sinh=?,gioi_tinh= ?,so_cmnd=?, so_dien_thoai=?, email=?,dia_chi=? where ma_khach_hang = ?";
    private final String SELLECT_ALL_TPYE = "SELECT * FROM loai_khach";
    private final String ADD = "INSERT INTO khach_hang " +
            "( ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi) VALUES" +
            " (?,?,?,?,?,?,?,?);";
    @Override
    public List<Customer> display() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseConnection.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELLECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                int customerType = Integer.parseInt(resultSet.getString("customer_type_id"));
                String name = resultSet.getString("name");
                String dayOfBirth = resultSet.getString("birthday");
                boolean gender = resultSet.getBoolean("gender");
                String iden = resultSet.getString("id_cad");
                int phone = resultSet.getInt("phone_number");
                 String email = resultSet.getString("email");
                 String address = resultSet.getString("address");
                 Customer customer = new Customer(id,customerType,name,dayOfBirth,gender,iden,phone,email,address);
                 customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
     return customerList;
    }

    @Override
    public Customer findById(int id) {
       Connection connection = BaseConnection.getConnectDB();
       Customer customer = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ID);
            preparedStatement.setInt(1,id);
             ResultSet resultSet = preparedStatement.executeQuery();
             while (resultSet.next()){
                 int idFind = resultSet.getInt("id");
                 int customerType = Integer.parseInt(resultSet.getString("customer_type_id"));
                 String name = resultSet.getString("name");
                 String dayOfBirth = resultSet.getString("birthday");
                 boolean gender = resultSet.getBoolean("gender");
                 String iden = resultSet.getString("id_cad");
                 int phone = resultSet.getInt("phone_number");
                 String email = resultSet.getString("email");
                 String address = resultSet.getString("address");
                 customer= new Customer(idFind,customerType,name,dayOfBirth,gender,iden,phone,email,address);
             }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    @Override
    public void update(Customer customer) {
         Connection connection = BaseConnection.getConnectDB();
        try {

            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setInt(1, customer.getCustomerType());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setDate(3, Date.valueOf(customer.getDayOfBirth()));
            preparedStatement.setBoolean(4,customer.isGender());
            preparedStatement.setString(5,customer.getIden());
            preparedStatement.setString(6, String.valueOf(customer.getPhone()));
            preparedStatement.setString(7,customer.getEmail());
            preparedStatement.setString(8,customer.getAddress());
            preparedStatement.setInt(9,customer.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
     Connection connection = BaseConnection.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }




    @Override
    public List<CustomerType> listType() {
        List<CustomerType> customerTypesList = new ArrayList<>();
        Connection connection = BaseConnection.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELLECT_ALL_TPYE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int idType = resultSet.getInt("ma_loai_khach");
                String name = resultSet.getString("ten_loai_khach");
                CustomerType customerType = new CustomerType(idType,name);

                customerTypesList.add(customerType);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerTypesList;
    }

    @Override
    public void AddCustomer(Customer customer) {
        Connection connection = BaseConnection.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD);
            preparedStatement.setInt(1, customer.getCustomerType());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setDate(3, Date.valueOf(customer.getDayOfBirth()));
            preparedStatement.setBoolean(4,customer.isGender());
            preparedStatement.setString(5,customer.getIden());
            preparedStatement.setString(6, String.valueOf(customer.getPhone()));
            preparedStatement.setString(7,customer.getEmail());
            preparedStatement.setString(8,customer.getAddress());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
