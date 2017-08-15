package com.templestay_portal.model;


public class ModelUser {
    
    private Integer userno;
    private String userid;
    private String username;
    private String userpassword;
    private String useremail;
    private String userphone;
    
    public ModelUser() {
        super();
    }
    public ModelUser(Integer userno, String userid, String username,
            String userpassword, String useremail, String userphone) {
        super();
        this.userno = userno;
        this.userid = userid;
        this.username = username;
        this.userpassword = userpassword;
        this.useremail = useremail;
        this.userphone = userphone;
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

    @Override
    public String toString() {
        return "ModelUser [userno=" + userno + ", userid=" + userid
                + ", username=" + username + ", userpassword=" + userpassword
                + ", useremail=" + useremail + ", userphone=" + userphone + "]";
    }

    public ModelUser(String userid, String userpasswd, String username,
            String userphone, String useremail) {
        super();
        this.userid = userid;
        this.userpassword = userpasswd;
        this.username = username;
        this.userphone = userphone;
        this.useremail = useremail;
    }
    public ModelUser(String userid, String userpasswd) {
        super();
        this.userid = userid;
        this.userpassword = userpasswd;
    }
    
    public ModelUser(String username,
            String userpassword, String useremail, String userphone) {
        super();
        this.username = username;
        this.userpassword = userpassword;
        this.useremail = useremail;
        this.userphone = userphone;
    }
}
