package service.ipml;

import model.House;
import repository.IHouseRepository;
import repository.impl.HouseRepository;
import service.IHouseService;

import java.util.List;

public class HouseService implements IHouseService {
    IHouseRepository iHouseRepository = new HouseRepository();

    @Override
    public List<House> selectAll() {
        return iHouseRepository.selectAll();
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
