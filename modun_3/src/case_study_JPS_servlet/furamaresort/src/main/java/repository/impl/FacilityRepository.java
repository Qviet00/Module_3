package repository.impl;

import model.facility.Facility;
import model.facility.RentType;
import model.facility.TypeService;
import repository.BaseConnection;
import repository.IFacilityRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {
    private static final String DISPLAY= "SELECT * FROM dich_vu;";
    private static final String DISPLAY_RENT= "SELECT * FROM kieu_thue;";
    private static final String DISPLAY_TYPE= "SELECT * FROM loai_dich_vu;";
    private static final String UPDATE= " update dich_vu set ten_dich_vu=?, dien_tich=?,chi_phi_thue=?,so_nguoi_toi_da=?,ma_kieu_thue=?,ma_loai_dich_vu=?,tieu_chuan_phong=?,mo_ta_tien_nghi_khac=?,dien_tich_do_boi=?,so_tang=?,dich_vu_mien_phi_di_kem=?" +
            "where ma_dich_vu=?";
    private static final String DELETE= "delete from dich_vu where ma_dich_vu=?;";
    private static final String FIND_BY_ID= "SELECT * FROM dich_vu where ma_dich_vu = ?;";
    private static final String ADD= "INSERT INTO dich_vu ( ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_do_boi, so_tang, dich_vu_mien_phi_di_kem) VALUES" +
            " (?,?,?,?,?,?,?,?,?,?,?);";


    @Override
    public List<Facility> display() {
        List<Facility> facilityList = new ArrayList<>();
        Connection connection = BaseConnection.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DISPLAY);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int Fcode= resultSet.getInt("ma_dich_vu");
                String name = resultSet.getString("ten_dich_vu");
                int area = resultSet.getInt("dien_tich");
                double cost = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentType = resultSet.getInt("ma_kieu_thue");
                int typeFacility= resultSet.getInt("ma_loai_dich_vu");
                String roomStandar= resultSet.getString("tieu_chuan_phong");
                String anyElse = resultSet.getString("mo_ta_tien_nghi_khac");
                double areaPool = resultSet.getDouble("dien_tich_do_boi");
                int flood = resultSet.getInt("so_tang");
                String freeService = resultSet.getString("dich_vu_mien_phi_di_kem");
                Facility facility = new Facility(Fcode,name,area,cost,maxPeople,rentType,
                        typeFacility,roomStandar,anyElse,areaPool,flood,freeService);
                facilityList.add(facility);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityList;
    }

    @Override
    public void add(Facility facility) {
        Connection connection = BaseConnection.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD);
            preparedStatement.setString(1,facility.getName());
            preparedStatement.setInt(2,facility.getArea());
            preparedStatement.setDouble(3,facility.getCost());
            preparedStatement.setInt(4,facility.getMaxPeople());
            preparedStatement.setInt(5,facility.getRentTypeCode());
            preparedStatement.setInt(6,facility.getFacilityTypeCode());
            preparedStatement.setString(7,facility.getRoomStandar());
            preparedStatement.setString(8,facility.getAnyElse());
            preparedStatement.setDouble(9,facility.getAreaPool());
            preparedStatement.setInt(10,facility.getFlood());
            preparedStatement.setString(11,facility.getServiceFree());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    public void update(Facility facility) {
      Connection connection = BaseConnection.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setString(1,facility.getName());
            preparedStatement.setInt(2,facility.getArea());
            preparedStatement.setDouble(3,facility.getCost());
            preparedStatement.setInt(4,facility.getMaxPeople());
            preparedStatement.setInt(5,facility.getRentTypeCode());
            preparedStatement.setInt(6,facility.getFacilityTypeCode());
            preparedStatement.setString(7,facility.getRoomStandar());
            preparedStatement.setString(8,facility.getAnyElse());
            preparedStatement.setDouble(9,facility.getAreaPool());
            preparedStatement.setInt(10,facility.getFlood());
            preparedStatement.setString(11,facility.getServiceFree());
            preparedStatement.setInt(12,facility.getFacilityCode());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Facility findByCode(int code) {
       Connection connection = BaseConnection.getConnectDB();
       Facility facility = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1,code);
             ResultSet resultSet = preparedStatement.executeQuery();
             while (resultSet.next()){
                 int Fcode= resultSet.getInt("ma_dich_vu");
                 String name = resultSet.getString("ten_dich_vu");
                 int area = resultSet.getInt("dien_tich");
                 double cost = resultSet.getDouble("chi_phi_thue");
                 int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                 int rentType = resultSet.getInt("ma_kieu_thue");
                 int typeFacility= resultSet.getInt("ma_loai_dich_vu");
                 String roomStandar= resultSet.getString("tieu_chuan_phong");
                 String anyElse = resultSet.getString("mo_ta_tien_nghi_khac");
                 double areaPool = resultSet.getDouble("dien_tich_do_boi");
                 int flood = resultSet.getInt("so_tang");
                 String freeService = resultSet.getString("dich_vu_mien_phi_di_kem");
                  facility = new Facility(Fcode,name,area,cost,maxPeople,rentType,
                         typeFacility,roomStandar,anyElse,areaPool,flood,freeService);
             }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facility;
    }

    @Override
    public void delete(int code) {
       Connection connection = BaseConnection.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,code);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<TypeService> serDisplay() {
        Connection connection = BaseConnection.getConnectDB();
        List<TypeService> list= new ArrayList<>();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(DISPLAY_TYPE);

            ResultSet resultSet =  preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("ma_loai_dich_vu");
                String name = resultSet.getString("ten_loai_dich_vu");
                TypeService typeService = new TypeService(id,name);
                list.add(typeService);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<RentType> rentDisplay() {
        Connection connection = BaseConnection.getConnectDB();
        List<RentType> listRent= new ArrayList<>();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(DISPLAY_RENT);

            ResultSet resultSet =  preparedStatement.executeQuery();
            RentType rentType;
            while (resultSet.next()){
                int id = resultSet.getInt("ma_kieu_thue");
                String name = resultSet.getString("ten_kieu_thue");
                rentType = new RentType(id,name);
                listRent.add(rentType);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listRent;
    }
}
