package model;

public class RentType {
    private int id;
    private String nameType;

    public RentType(int id, String nameType) {
        this.id = id;
        this.nameType = nameType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameType() {
        return nameType;
    }

    public void setNameType(String nameType) {
        this.nameType = nameType;
    }

    public RentType() {
    }
}
