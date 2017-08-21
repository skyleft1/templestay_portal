package com.templestay_portal.model;

public class ModelTemple {
    private String templecd;
    private String templeaddr_postcode;
    private String templeaddr_road;
    private String templeaddr_jibun;
    private String templephone;
    private Float lat ;
    private Float lng ;
    
    public ModelTemple() {
        super();
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

    public Float getLat() {
        return lat;
    }

    public void setLat(Float lat) {
        this.lat = lat;
    }

    public Float getLng() {
        return lng;
    }

    public void setLng(Float lng) {
        this.lng = lng;
    }

    @Override
    public String toString() {
        return "ModelTemple [templecd=" + templecd + ", templeaddr_postcode="
                + templeaddr_postcode + ", templeaddr_road=" + templeaddr_road
                + ", templeaddr_jibun=" + templeaddr_jibun + ", templephone="
                + templephone + ", lat=" + lat + ", lng=" + lng + "]";
    }
    
}
