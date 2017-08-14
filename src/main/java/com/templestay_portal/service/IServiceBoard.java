package com.templestay_portal.service;

import java.util.List;

import com.templestay_portal.model.ModelBoard;


public interface IServiceBoard {
   
    int insertBoard( ModelBoard board );
    int insertBoardList( List<ModelBoard> boardlist );
    
    ModelBoard getBoardOne(String boardcd);
    List<ModelBoard> getBoardList();
    
    int updateBoard(ModelBoard updateBoard, ModelBoard searchBoard);       
    int deleteBoard(ModelBoard board);
    
    List<ModelBoard> getBoardSearch(ModelBoard board);    
    
}

