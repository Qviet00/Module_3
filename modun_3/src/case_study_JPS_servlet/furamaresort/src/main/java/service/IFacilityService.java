package service;

import model.facility.Facility;
import model.facility.RentType;
import model.facility.TypeService;

import java.util.List;
import java.util.Map;

public interface IFacilityService {
    List<Facility> display();
    Map<String,String> add (Facility facility);
    void update(Facility facility);
    Facility findByCode(int  code);
    void  delete(int code);
    List<TypeService> serDisplay();
    List<RentType> rentDisplay();
}

