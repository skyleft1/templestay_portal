package com.templestay_portal.model;

import java.sql.Date;

public class ModelUser {
    
    private Integer userno;
    private String userid;
    private String username;
    private String userpassword;
    private String useremail;
    private String userphone;
    private String addr_postcode ;
    private String addr_road ;
    private String addr_jibun ;
    private Date   joindate ;
    
    public ModelUser() {
        super();
    }
    
    public ModelUser(String userid, String userpassword) {
        super();
        this.userid = userid;
        this.userpassword = userpassword;
    }

    public ModelUser(Integer userno, String userid, String username,
            String userpassword, String useremail, String userphone,
            String addr_postcode, String addr_road, String addr_jibun,
            Date joindate) {
        super();
        this.userno = userno;
        this.userid = userid;
        this.username = username;
        this.userpassword = userpassword;
        this.useremail = useremail;
        this.userphone = userphone;
        this.addr_postcode = addr_postcode;
        this.addr_road = addr_road;
        this.addr_jibun = addr_jibun;
        this.joindate = joindate;
    }

    public Integer getUserno() {
        return userno;
    }

    public void setUserno(Integer userno) {
        this.userno = userno;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getAddr_postcode() {
        return addr_postcode;
    }

    public void setAddr_postcode(String addr_postcode) {
        this.addr_postcode = addr_postcode;
    }

    public String getAddr_road() {
        return addr_road;
    }

    public void setAddr_road(String addr_road) {
        this.addr_road = addr_road;
    }

    public String getAddr_jibun() {
        return addr_jibun;
    }

    public void setAddr_jibun(String addr_jibun) {
        this.addr_jibun = addr_jibun;
    }

    public Date getJoindate() {
        return joindate;
    }

    public void setJoindate(Date joindate) {
        this.joindate = joindate;
    }

    @Override
    public String toString() {
        return "ModelUser [userno=" + userno + ", userid=" + userid
                + ", username=" + username + ", userpassword=" + userpassword
                + ", useremail=" + useremail + ", userphone=" + userphone
                + ", addr_postcode=" + addr_postcode + ", addr_road="
                + addr_road + ", addr_jibun=" + addr_jibun + ", joindate="
                + joindate + "]";
    }
    
}
