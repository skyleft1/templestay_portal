package com.templestay_portal.model;

import java.util.Date;

import android.graphics.drawable.Drawable;

public class ModelBoard {
    
    private String boardcd;
    private String boardname;
    
    public ModelBoard() {
        super();
    }

    public ModelBoard(String boardcd, String boardname) {
        super();
        this.boardcd = boardcd;
        this.boardname = boardname;
    }

    public String getBoardcd() {
        return boardcd;
    }

    public void setBoardcd(String boardcd) {
        this.boardcd = boardcd;
    }

    public String getBoardname() {
        return boardname;
    }

    public void setBoardname(String boardname) {
        this.boardname = boardname;
    }

    @Override
    public String toString() {
        return "ModelBoard [boardcd=" + boardcd + ", boardname=" + boardname
                + "]";
    }
    
}
