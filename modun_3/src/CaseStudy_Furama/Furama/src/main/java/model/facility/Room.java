package model.facility;

public class Room extends Facility{
    private String facility_free;

    public String getFacility_free() {
        return facility_free;
    }

    public void setFacility_free(String facility_free) {
        this.facility_free = facility_free;
    }

    public Room(String facility_free) {
        this.facility_free = facility_free;
    }

    public Room(int id, String name, int area, double cost, int maxPeople, int rentTypeId, int facilityTypeId, String facility_free) {
        super(id, name, area, cost, maxPeople, rentTypeId, facilityTypeId);
        this.facility_free = facility_free;
    }
}
