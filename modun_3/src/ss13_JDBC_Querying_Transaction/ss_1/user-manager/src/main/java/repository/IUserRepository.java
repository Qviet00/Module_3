package repository;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserRepository {
    void insertUser(User user) throws SQLException;

    User selectUser(int id);

    List<User> selectAllUsers();

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;

    List<User> searchByCountry(String country);
    User getUserById(int id);
    void insertUserStore(User user) throws SQLException;
    boolean deleteUserStore(int id) throws SQLException;
    List<User> selectUserStore() throws SQLException;
}
