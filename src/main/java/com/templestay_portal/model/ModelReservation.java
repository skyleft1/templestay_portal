package com.templestay_portal.model;

import java.util.Date;

import android.graphics.drawable.Drawable;

public class ModelReservation {
    
    private Integer reservationno;
    private Integer programno;
    private String userid;
    private Date checkdate;
    private Integer fixedprice;
    private Integer number;
    
    // join에 의한 추가
    private String programtype;
    private String programname;
    private String templecd;
    
    public ModelReservation() {
        super();
    }

    public Integer getReservationno() {
        return reservationno;
    }

    public void setReservationno(Integer reservationno) {
        this.reservationno = reservationno;
    }

    public Integer getProgramno() {
        return programno;
    }

    public void setProgramno(Integer programno) {
        this.programno = programno;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public Date getCheckdate() {
        return checkdate;
    }

    public void setCheckdate(Date checkdate) {
        this.checkdate = checkdate;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
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

    
    public String getTemplecd() {
        return templecd;
    }

    public void setTemplecd(String templecd) {
        this.templecd = templecd;
    }

    public Integer getFixedprice() {
        return fixedprice;
    }

    public void setFixedprice(Integer fixedprice) {
        this.fixedprice = fixedprice;
    }

    @Override
    public String toString() {
        return "ModelReservation [reservationno=" + reservationno
                + ", programno=" + programno + ", userid=" + userid
                + ", checkdate=" + checkdate + ", fixedprice=" + fixedprice
                + ", number=" + number + ", programtype=" + programtype
                + ", programname=" + programname + ", templecd=" + templecd
                + ", getReservationno()=" + getReservationno()
                + ", getProgramno()=" + getProgramno() + ", getUserid()="
                + getUserid() + ", getCheckdate()=" + getCheckdate()
                + ", getNumber()=" + getNumber() + ", getProgramtype()="
                + getProgramtype() + ", getProgramname()=" + getProgramname()
                + ", getTemplecd()=" + getTemplecd() + ", getFixedprice()="
                + getFixedprice() + ", getClass()=" + getClass()
                + ", hashCode()=" + hashCode() + ", toString()="
                + super.toString() + "]";
    }

    
}
