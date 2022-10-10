package model;

public class House {
    private int id;
    private String name;
    private String phone;
    private String dateStar;
    private String dateEnd;
    private int idType;

    public House(int id, String name, String phone, String dateStar,
                 String dateEnd, int idType) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.dateStar = dateStar;
        this.dateEnd = dateEnd;
        this.idType = idType;
    }

    public House() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDateStar() {
        return dateStar;
    }

    public void setDateStar(String dateStar) {
        this.dateStar = dateStar;
    }

    public String getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(String dateEnd) {
        this.dateEnd = dateEnd;
    }

    public int getIdType() {
        return idType;
    }

    public void setIdType(int idType) {
        this.idType = idType;
    }


}
