package model.customer;

public class CustomerType {
    private int idType;
    private String nameType;

    public CustomerType() {
    }

    public CustomerType(int idType, String nameTpye) {
        this.idType = idType;
        this.nameType = nameTpye;
    }

    public int getIdType() {
        return idType;
    }

    public void setIdType(int idType) {
        this.idType = idType;
    }

    public String getNameType() {
        return nameType;
    }

    public void setNameType(String nameTpye) {
        this.nameType = nameTpye;
    }
}
