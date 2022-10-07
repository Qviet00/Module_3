package model.facility;

public class Facility {
    private int facilityCode;
    private String name;
    private int area;
    private double cost;
    private int maxPeople;
    private int rentTypeCode;
    private int facilityTypeCode;
    private String roomStandar;
    private String  anyElse;
    private double areaPool;
    private int flood;
    private String serviceFree;

    public Facility() {
    }

    public Facility(int facilityCode, String name, int area, double cost, int maxPeople, int rentTypeCode,
                    int facilityTypeCode, String roomStandar, String anyElse, double areaPool,
                    int flood, String serviceFree) {
        this.facilityCode = facilityCode;
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeCode = rentTypeCode;
        this.facilityTypeCode = facilityTypeCode;
        this.roomStandar = roomStandar;
        this.anyElse = anyElse;
        this.areaPool = areaPool;
        this.flood = flood;
        this.serviceFree = serviceFree;
    }

    public Facility(String name, int area, double cost, int maxPeople,
                    int rentTypeCode, int facilityTypeCode, String roomStandar, String anyElse,
                    double areaPool, int flood, String serviceFree) {
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeCode = rentTypeCode;
        this.facilityTypeCode = facilityTypeCode;
        this.roomStandar = roomStandar;
        this.anyElse = anyElse;
        this.areaPool = areaPool;
        this.flood = flood;
        this.serviceFree = serviceFree;
    }

    public Facility(String name, int area, double cost,
                    int people, int rent, String room, String anyElse,
                    double areaPool, int flood, String freeService) {
    }

    public int getFacilityCode() {
        return facilityCode;
    }

    public void setFacilityCode(int facilityCode) {
        this.facilityCode = facilityCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(int maxPeople) {
        this.maxPeople = maxPeople;
    }

    public int getRentTypeCode() {
        return rentTypeCode;
    }

    public void setRentTypeCode(int rentTypeCode) {
        this.rentTypeCode = rentTypeCode;
    }

    public int getFacilityTypeCode() {
        return facilityTypeCode;
    }

    public void setFacilityTypeCode(int facilityTypeCode) {
        this.facilityTypeCode = facilityTypeCode;
    }

    public String getRoomStandar() {
        return roomStandar;
    }

    public void setRoomStandar(String roomStandar) {
        this.roomStandar = roomStandar;
    }

    public String getAnyElse() {
        return anyElse;
    }

    public void setAnyElse(String anyElse) {
        this.anyElse = anyElse;
    }

    public double getAreaPool() {
        return areaPool;
    }

    public void setAreaPool(double areaPool) {
        this.areaPool = areaPool;
    }

    public int getFlood() {
        return flood;
    }

    public void setFlood(int flood) {
        this.flood = flood;
    }

    public String getServiceFree() {
        return serviceFree;
    }

    public void setServiceFree(String serviceFree) {
        this.serviceFree = serviceFree;
    }
}
