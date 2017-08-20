package com.templestay_portal.model;

import java.util.Arrays;
import java.util.Date;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import android.graphics.drawable.Drawable;

public class ModelTemple_Program {
    
    private String templecd;
    private Integer programno;
    private String programtype;
    private String programname;
    private String programdetail;
    private Integer programprice;
    private byte[] programimage;
    private Integer maxperson;
    private Integer totalperson;
    private Date availabledate_start;
    private Date availabledate_end;
    private Date checkdate;
    
    
    // 추가된 컬럼
    private String templeaddr_postcode;
    private String templeaddr_road;
    private String templeaddr_jibun;
    private String templephone;
    
    private String  contentType    ;
    private byte[]  imageBytes  ;
    private String  imageBase64 ;
    private CommonsMultipartFile image  ;
    
    public ModelTemple_Program() {
        super();
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
    public byte[] getProgramimage() {
        return programimage;
    }
    public void setProgramimage(byte[] programimage) {
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
    public Date getAvailabledate_start() {
        return availabledate_start;
    }
    public void setAvailabledate_start(Date availabledate_start) {
        this.availabledate_start = availabledate_start;
    }
    public Date getAvailabledate_end() {
        return availabledate_end;
    }
    public void setAvailabledate_end(Date availabledate_end) {
        this.availabledate_end = availabledate_end;
    }
    public Date getCheckdate() {
        return checkdate;
    }
    public void setCheckdate(Date checkdate) {
        this.checkdate = checkdate;
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
    
    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public byte[] getImageBytes() {
        return imageBytes;
    }

    public void setImageBytes(byte[] imageBytes) {
        this.imageBytes = imageBytes;
    }

    public String getImageBase64() {
        return imageBase64;
    }

    public void setImageBase64(String imageBase64) {
        this.imageBase64 = imageBase64;
    }

    public CommonsMultipartFile getImage() {
        return image;
    }

    public void setImage(CommonsMultipartFile image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "ModelTemple_Program [templecd=" + templecd + ", programno="
                + programno + ", programtype=" + programtype + ", programname="
                + programname + ", programdetail=" + programdetail
                + ", programprice=" + programprice + ", programimage="
                + Arrays.toString(programimage) + ", maxperson=" + maxperson
                + ", totalperson=" + totalperson + ", availabledate_start="
                + availabledate_start + ", availabledate_end="
                + availabledate_end + ", checkdate=" + checkdate
                + ", templeaddr_postcode=" + templeaddr_postcode
                + ", templeaddr_road=" + templeaddr_road + ", templeaddr_jibun="
                + templeaddr_jibun + ", templephone=" + templephone
                + ", contentType=" + contentType + ", imageBytes="
                + Arrays.toString(imageBytes) + ", imageBase64=" + imageBase64
                + ", image=" + image + "]";
    }

    
}
