package service.impl;

import model.facility.Facility;
import model.facility.RentType;
import model.facility.TypeService;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FacilityService implements IFacilityService {
    private static IFacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public List<Facility> display() {
        return facilityRepository.display();
    }

    @Override
    public Map<String, String> add(Facility facility) {
        Map<String, String> errorMap = new HashMap<>();
            if (!facility.getName().isEmpty()) {
                if (!facility.getName().matches("^[A-Z][A-Z a-z0-9]+$")) {
                    errorMap.put("nameErr", "nhap dung dinh dang");
                }
            } else {
                    errorMap.put("nameErr", "phai nhap chu");
                }

            if (facility.getArea()<0) {
                errorMap.put("areaErr", "nhap dung dinh dang");
            }
            if (facility.getCost()<0) {
                errorMap.put("costErr", "nhap dung dinh dang");
            }
            if ((Math.ceil(facility.getMaxPeople() ) != Math.floor(facility.getMaxPeople())) && facility.getMaxPeople()<0 ) {
                errorMap.put("peopleErr", "nhap dung dinh dang");
            }
            if ( (Math.ceil(facility.getAreaPool()) != Math.floor(facility.getAreaPool())) || facility.getAreaPool()<0) {
                errorMap.put("poolErr", "nhap dung dinh dang");
            }

            if ((Math.ceil(facility.getFlood()) != Math.floor(facility.getFlood())) && facility.getFlood()<0) {
                    errorMap.put("floodErr", "nhap dung dinh dang");
                }

        if (errorMap.size() == 0) {
            facilityRepository.add(facility);
        }
        return errorMap;
    }

    @Override
    public void update(Facility facility) {
        facilityRepository.update(facility);
    }

    @Override
    public Facility findByCode(int code) {
        return facilityRepository.findByCode(code);
    }

    @Override
    public void delete(int code) {
        facilityRepository.delete(code);
    }

    @Override
    public List<TypeService> serDisplay() {
        return facilityRepository.serDisplay();
    }

    @Override
    public List<RentType> rentDisplay() {
        return facilityRepository.rentDisplay();
    }

}