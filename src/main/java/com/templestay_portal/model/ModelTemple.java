package com.templestay_portal.model;

public class ModelTemple {
    private String templecd;
    private String templeaddr_postcode;
    private String templeaddr_road;
    private String templeaddr_jibun;
    private String templephone;
    
    public ModelTemple() {
        super();
    }
    public ModelTemple(String templecd, String templeaddr_postcode,
            String templeaddr_road, String templeaddr_jibun,
            String templephone) {
        super();
        this.templecd = templecd;
        this.templeaddr_postcode = templeaddr_postcode;
        this.templeaddr_road = templeaddr_road;
        this.templeaddr_jibun = templeaddr_jibun;
        this.templephone = templephone;
    }
    public String getTemplecd() {
        return templecd;
    }
    public void setTemplecd(String templecd) {
        this.templecd = templecd;
    }
    public String getTempleaddr_postcode() {
        return templeaddr_postcode;
    }
    public void setTempleaddr_postcode(String templeaddr_postcode) {
        this.templeaddr_postcode = templeaddr_postcode;
    }
    public String getTempleaddr_road() {
        return templeaddr_road;
    }
    public void setTempleaddr_road(String templeaddr_road) {
        this.templeaddr_road = templeaddr_road;
    }
    public String getTempleaddr_jibun() {
        return templeaddr_jibun;
    }
    public void setTempleaddr_jibun(String templeaddr_jibun) {
        this.templeaddr_jibun = templeaddr_jibun;
    }
    public String getTemplephone() {
        return templephone;
    }
    public void setTemplephone(String templephone) {
        this.templephone = templephone;
    }
    @Override
    public String toString() {
        return "ModelTemple [templecd=" + templecd + ", templeaddr_postcode="
                + templeaddr_postcode + ", templeaddr_road=" + templeaddr_road
                + ", templeaddr_jibun=" + templeaddr_jibun + ", templephone="
                + templephone + "]";
    }
    
   
    
}
