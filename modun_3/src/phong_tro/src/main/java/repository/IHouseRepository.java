package repository;

import model.House;

import java.util.List;

public interface IHouseRepository {
    List<House> selectAll();
    boolean newHouse(House house);
    boolean editHouse(House house);
    List<House> search(int id);
    House byId(int id);
}
