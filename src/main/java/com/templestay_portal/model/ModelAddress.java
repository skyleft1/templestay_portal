package com.templestay_portal.model;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ModelAddress {

    String 경기도      ;
    String 강원도      ;
    String 제주도      ;
    String 인천      ;
    String 충청남도      ;
    String 충청북도      ;
    String 경상남도       ;
    String 경상북도      ;
    String 전라남도      ;
    String 전라북도      ;
    String 부산      ;
    String 서울      ;
    
    
    public ModelAddress() {
        super();
    }
    
    public ModelAddress(String 경기도, String 강원도, String 제주도, String 인천,
            String 충청남도, String 충청북도, String 경상남도, String 경상북도, String 전라남도,
            String 전라북도, String 부산, String 서울) {
        super();
        this.경기도 = 경기도;
        this.강원도 = 강원도;
        this.제주도 = 제주도;
        this.인천 = 인천;
        this.충청남도 = 충청남도;
        this.충청북도 = 충청북도;
        this.경상남도 = 경상남도;
        this.경상북도 = 경상북도;
        this.전라남도 = 전라남도;
        this.전라북도 = 전라북도;
        this.부산 = 부산;
        this.서울 = 서울;
    }

    public String get경기도() {
        return 경기도;
    }
    public void set경기도(String 경기도) {
        this.경기도 = 경기도;
    }
    public String get강원도() {
        return 강원도;
    }
    public void set강원도(String 강원도) {
        this.강원도 = 강원도;
    }
    public String get제주도() {
        return 제주도;
    }
    public void set제주도(String 제주도) {
        this.제주도 = 제주도;
    }
    public String get인천() {
        return 인천;
    }
    public void set인천(String 인천) {
        this.인천 = 인천;
    }
    public String get충청남도() {
        return 충청남도;
    }
    public void set충청남도(String 충청남도) {
        this.충청남도 = 충청남도;
    }
    public String get충청북도() {
        return 충청북도;
    }
    public void set충청북도(String 충청북도) {
        this.충청북도 = 충청북도;
    }
    public String get경상남도() {
        return 경상남도;
    }
    public void set경상남도(String 경상남도) {
        this.경상남도 = 경상남도;
    }
    public String get경상북도() {
        return 경상북도;
    }
    public void set경상북도(String 경상북도) {
        this.경상북도 = 경상북도;
    }
    public String get전라남도() {
        return 전라남도;
    }
    public void set전라남도(String 전라남도) {
        this.전라남도 = 전라남도;
    }
    public String get전라북도() {
        return 전라북도;
    }
    public void set전라북도(String 전라북도) {
        this.전라북도 = 전라북도;
    }
    public String get부산() {
        return 부산;
    }
    public void set부산(String 부산) {
        this.부산 = 부산;
    }
    public String get서울() {
        return 서울;
    }
    public void set서울(String 서울) {
        this.서울 = 서울;
    }

    @Override
    public String toString() {
        return "ModelAddress [경기도=" + 경기도 + ", 강원도=" + 강원도 + ", 제주도=" + 제주도
                + ", 인천=" + 인천 + ", 충청남도=" + 충청남도 + ", 충청북도=" + 충청북도 + ", 경상남도="
                + 경상남도 + ", 경상북도=" + 경상북도 + ", 전라남도=" + 전라남도 + ", 전라북도=" + 전라북도
                + ", 부산=" + 부산 + ", 서울=" + 서울 + "]";
    }
    
    
    
}
