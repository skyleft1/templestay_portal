package com.templestay_portal.model;

import java.util.Date;

import android.graphics.drawable.Drawable;

public class ModelReservation {
    
    private Integer reservationno;
    private Integer programno;
    private String userid;
    private Date checkdate;
    private Integer number;
    
    public ModelReservation() {
        super();
    }
    public ModelReservation(Integer reservation, Integer programno,
            String userid, Date checkdate, Integer number) {
        super();
        this.reservationno = reservationno;
        this.programno = programno;
        this.userid = userid;
        this.checkdate = checkdate;
        this.number = number;
    }
    public Integer getReservation() {
        return reservationno;
    }
    public void setReservation(Integer reservationno) {
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
    @Override
    public String toString() {
        return "ModelReservation [reservationno=" + reservationno + ", programno="
                + programno + ", userid=" + userid + ", checkdate=" + checkdate
                + ", number=" + number + "]";
    }
    
}
