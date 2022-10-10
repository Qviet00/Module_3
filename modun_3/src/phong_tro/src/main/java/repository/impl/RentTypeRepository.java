package repository.impl;

import model.RentType;
import repository.Database;
import repository.IRentTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RentTypeRepository implements IRentTypeRepository {
    private static final String FIN_ALL = "select * from kieu_thue";

    @Override
    public List<RentType> seclectAll() {
        List<RentType> rentTypes = new ArrayList<>();
        Connection connection = Database.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIN_ALL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String nameType= rs.getString("hinh_thuc_thue");
                rentTypes.add(new RentType(id,nameType));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rentTypes;
    }
}
