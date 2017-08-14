package com.templestay_portal.model;

import java.util.Date;

import android.graphics.drawable.Drawable;

public class ModelBoard_Article_Comment {
    
    private Integer commentno;
    private Integer articleno;
    private String commentmemo;
    private Date nowdate;
    private String userid;
    
    public ModelBoard_Article_Comment() {
        super();
    }
    public ModelBoard_Article_Comment(Integer commentno, Integer articleno,
            String commentmemo, Date nowdate, String userid) {
        super();
        this.commentno = commentno;
        this.articleno = articleno;
        this.commentmemo = commentmemo;
        this.nowdate = nowdate;
        this.userid = userid;
    }
    public Integer getCommentno() {
        return commentno;
    }
    public void setCommentno(Integer commentno) {
        this.commentno = commentno;
    }
    public Integer getArticleno() {
        return articleno;
    }
    public void setArticleno(Integer articleno) {
        this.articleno = articleno;
    }
    public String getCommentmemo() {
        return commentmemo;
    }
    public void setCommentmemo(String commentmemo) {
        this.commentmemo = commentmemo;
    }
    public Date getNowdate() {
        return nowdate;
    }
    public void setNowdate(Date nowdate) {
        this.nowdate = nowdate;
    }
    public String getUserid() {
        return userid;
    }
    public void setUserid(String userid) {
        this.userid = userid;
    }
    @Override
    public String toString() {
        return "ModelBoard_Article_Comment [commentno=" + commentno
                + ", articleno=" + articleno + ", commentmemo=" + commentmemo
                + ", nowdate=" + nowdate + ", userid=" + userid + "]";
    }

}
