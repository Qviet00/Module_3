package repository;

import model.facility.Facility;
import model.facility.RentType;
import model.facility.TypeService;

import java.util.List;

public interface IFacilityRepository {
    List<Facility> display();
    void add (Facility facility);
    void update(Facility facility);
    Facility findByCode(int  code);
    void  delete(int code);
    List<TypeService> serDisplay();
    List<RentType> rentDisplay();
}
