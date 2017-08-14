package com.templestay_portal.model;

import java.util.Date;

import android.graphics.drawable.Drawable;

public class ModelBoard_Article {
    
    private Integer articleno;
    private String userid;
    private String boardcd;
    private String title;
    private String content;
    private Integer hit;
    private Date nowdate;
    
    public ModelBoard_Article() {
        super();
    }
    public ModelBoard_Article(Integer articleno, String userid, String boardcd,
            String title, String content, Integer hit, Date nowdate) {
        super();
        this.articleno = articleno;
        this.userid = userid;
        this.boardcd = boardcd;
        this.title = title;
        this.content = content;
        this.hit = hit;
        this.nowdate = nowdate;
    }
    public Integer getArticleno() {
        return articleno;
    }
    public void setArticleno(Integer articleno) {
        this.articleno = articleno;
    }
    public String getUserid() {
        return userid;
    }
    public void setUserid(String userid) {
        this.userid = userid;
    }
    public String getBoardcd() {
        return boardcd;
    }
    public void setBoardcd(String boardcd) {
        this.boardcd = boardcd;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public Integer getHit() {
        return hit;
    }
    public void setHit(Integer hit) {
        this.hit = hit;
    }
    public Date getNowdate() {
        return nowdate;
    }
    public void setNowdate(Date nowdate) {
        this.nowdate = nowdate;
    }
    @Override
    public String toString() {
        return "ModelBoard_Article [articleno=" + articleno + ", userid="
                + userid + ", boardcd=" + boardcd + ", title=" + title
                + ", content=" + content + ", hit=" + hit + ", nowdate="
                + nowdate + "]";
    }

}
