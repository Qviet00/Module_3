package model.facility;

public class RentType {
    private int rentCode;
    private String nameRent;

    public RentType() {
    }

    public RentType(int rentCode, String nameRent) {
        this.rentCode = rentCode;
        this.nameRent = nameRent;
    }

    public int getRentCode() {
        return rentCode;
    }

    public void setRentCode(int rentCode) {
        this.rentCode = rentCode;
    }

    public String getNameRent() {
        return nameRent;
    }

    public void setNameRent(String nameRent) {
        this.nameRent = nameRent;
    }
}
