package com.templestay_portal.model;

import java.util.Date;

import android.graphics.drawable.Drawable;

public class ModelTemple_Program {
    
    private String templecd;
    private Integer programno;
    private String programtype;
    private String programname;
    private String programdetail;
    private Integer programprice;
    private Drawable programimage;
    private Integer maxperson;
    private Integer totalperson;
    private Date availabledate;
    
    public ModelTemple_Program() {
        super();
    }
    public ModelTemple_Program(String templecd, Integer programno,
            String programtype, String programname, String programdetail,
            Integer programprice, Drawable programimage, Integer maxperson,
            Integer totalperson, Date availabledate) {
        super();
        this.templecd = templecd;
        this.programno = programno;
        this.programtype = programtype;
        this.programname = programname;
        this.programdetail = programdetail;
        this.programprice = programprice;
        this.programimage = programimage;
        this.maxperson = maxperson;
        this.totalperson = totalperson;
        this.availabledate = availabledate;
    }
    public String getTemplecd() {
        return templecd;
    }
    public void setTemplecd(String templecd) {
        this.templecd = templecd;
    }
    public Integer getProgramno() {
        return programno;
    }
    public void setProgramno(Integer programno) {
        this.programno = programno;
    }
    public String getProgramtype() {
        return programtype;
    }
    public void setProgramtype(String programtype) {
        this.programtype = programtype;
    }
    public String getProgramname() {
        return programname;
    }
    public void setProgramname(String programname) {
        this.programname = programname;
    }
    public String getProgramdetail() {
        return programdetail;
    }
    public void setProgramdetail(String programdetail) {
        this.programdetail = programdetail;
    }
    public Integer getProgramprice() {
        return programprice;
    }
    public void setProgramprice(Integer programprice) {
        this.programprice = programprice;
    }
    public Drawable getProgramimage() {
        return programimage;
    }
    public void setProgramimage(Drawable programimage) {
        this.programimage = programimage;
    }
    public Integer getMaxperson() {
        return maxperson;
    }
    public void setMaxperson(Integer maxperson) {
        this.maxperson = maxperson;
    }
    public Integer getTotalperson() {
        return totalperson;
    }
    public void setTotalperson(Integer totalperson) {
        this.totalperson = totalperson;
    }
    public Date getAvailabledate() {
        return availabledate;
    }
    public void setAvailabledate(Date availabledate) {
        this.availabledate = availabledate;
    }
    @Override
    public String toString() {
        return "ModelTemple_Program [templecd=" + templecd + ", programno="
                + programno + ", programtype=" + programtype + ", programname="
                + programname + ", programdetail=" + programdetail
                + ", programprice=" + programprice + ", programimage="
                + programimage + ", maxperson=" + maxperson + ", totalperson="
                + totalperson + ", availabledate=" + availabledate + "]";
    }
    
    

}
