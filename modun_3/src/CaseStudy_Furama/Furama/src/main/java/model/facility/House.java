package model.facility;

public class House extends Facility{
    private String standard_room;
    private  String description_other_convenience;
    private int number_of_floors;

    public String getStandard_room() {
        return standard_room;
    }

    public void setStandard_room(String standard_room) {
        this.standard_room = standard_room;
    }

    public String getDescription_other_convenience() {
        return description_other_convenience;
    }

    public void setDescription_other_convenience(String description_other_convenience) {
        this.description_other_convenience = description_other_convenience;
    }

    public int getNumber_of_floors() {
        return number_of_floors;
    }

    public void setNumber_of_floors(int number_of_floors) {
        this.number_of_floors = number_of_floors;
    }

    public House(String standard_room, String description_other_convenience, int number_of_floors) {
        this.standard_room = standard_room;
        this.description_other_convenience = description_other_convenience;
        this.number_of_floors = number_of_floors;
    }

    public House(int id, String name, int area, double cost, int maxPeople, int rentTypeId, int facilityTypeId, String standard_room, String description_other_convenience, int number_of_floors) {
        super(id, name, area, cost, maxPeople, rentTypeId, facilityTypeId);
        this.standard_room = standard_room;
        this.description_other_convenience = description_other_convenience;
        this.number_of_floors = number_of_floors;
    }
}
