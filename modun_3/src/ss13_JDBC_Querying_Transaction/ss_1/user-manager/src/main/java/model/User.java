package model;

public class User implements Comparable<User> {
    private int id;
    private String name;
    private String email;
    private String country;
    private String phone;

    public User(int id, String name, String email, String country,String phone) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.country = country;
        this.phone = phone;
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

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public int compareTo(User o) {
        return o.getName().compareTo(this.name);
    }
}
