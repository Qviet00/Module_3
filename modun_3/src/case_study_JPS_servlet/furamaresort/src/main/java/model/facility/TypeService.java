package model.facility;

public class TypeService {
    private int typeServiceCode;
    private String nameService;

    public TypeService() {
    }

    public TypeService(int typeServiceCode, String nameService) {
        this.typeServiceCode = typeServiceCode;
        this.nameService = nameService;
    }

    public int getTypeServiceCode() {
        return typeServiceCode;
    }

    public void setTypeServiceCode(int typeServiceCode) {
        this.typeServiceCode = typeServiceCode;
    }

    public String getNameService() {
        return nameService;
    }

    public void setNameService(String nameService) {
        this.nameService = nameService;
    }
}
