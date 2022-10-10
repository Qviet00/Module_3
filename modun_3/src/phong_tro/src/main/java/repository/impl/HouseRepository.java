package repository.impl;

import model.House;
import repository.Database;
import repository.IHouseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HouseRepository implements IHouseRepository {
    private static final String FIND_ALL = "select * from phong_tro";

    @Override
    public List<House> selectAll() {
        List<House> houses = new ArrayList<>();
        Connection connection = Database.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("ten_nguoi_thue");
                String phone = rs.getString("so_dien_thoai");
                String dataStar = rs.getString("ngay_bat_dau");
                String dataEnd = rs.getString("ngay_ket_thuc");
                int typeId = rs.getInt("id_kieu_thue");
                houses.add(new House(id, name, phone, dataStar, dataEnd, typeId));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houses;
    }

    @Override
    public boolean newHouse(House house) {
        return false;
    }

    @Override
    public boolean editHouse(House house) {
        return false;
    }

    @Override
    public List<House> search(int id) {
        return null;
    }

    @Override
    public House byId(int id) {
        return null;
    }
}
