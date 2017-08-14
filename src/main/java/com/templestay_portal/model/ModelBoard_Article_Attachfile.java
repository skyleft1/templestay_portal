package com.templestay_portal.model;

import java.util.Date;

import android.graphics.drawable.Drawable;

public class ModelBoard_Article_Attachfile {
    
    private Integer attachfileno;
    private Integer articleno;
    private String filename;
    private String filetype;
    private Integer filesize;
    private String tempfilename;
    
    public ModelBoard_Article_Attachfile() {
        super();
    }
    public ModelBoard_Article_Attachfile(Integer attachfileno,
            Integer articleno, String filename, String filetype,
            Integer filesize, String tempfilename) {
        super();
        this.attachfileno = attachfileno;
        this.articleno = articleno;
        this.filename = filename;
        this.filetype = filetype;
        this.filesize = filesize;
        this.tempfilename = tempfilename;
    }
    public Integer getAttachfileno() {
        return attachfileno;
    }
    public void setAttachfileno(Integer attachfileno) {
        this.attachfileno = attachfileno;
    }
    public Integer getArticleno() {
        return articleno;
    }
    public void setArticleno(Integer articleno) {
        this.articleno = articleno;
    }
    public String getFilename() {
        return filename;
    }
    public void setFilename(String filename) {
        this.filename = filename;
    }
    public String getFiletype() {
        return filetype;
    }
    public void setFiletype(String filetype) {
        this.filetype = filetype;
    }
    public Integer getFilesize() {
        return filesize;
    }
    public void setFilesize(Integer filesize) {
        this.filesize = filesize;
    }
    public String getTempfilename() {
        return tempfilename;
    }
    public void setTempfilename(String tempfilename) {
        this.tempfilename = tempfilename;
    }
    @Override
    public String toString() {
        return "ModelBoard_Article_Attachfile [attachfileno=" + attachfileno
                + ", articleno=" + articleno + ", filename=" + filename
                + ", filetype=" + filetype + ", filesize=" + filesize
                + ", tempfilename=" + tempfilename + "]";
    }
    
}
