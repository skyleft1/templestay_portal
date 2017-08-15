package com.templestay_portal.dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.templestay_portal.model.ModelBoard;
import com.templestay_portal.model.ModelTemple;

public interface IDaoBoard {
    
    int insertBoard( ModelBoard board );
    int insertBoardList( List<ModelBoard> boardlist );
    
    ModelBoard getBoardOne(String boardcd);
    List<ModelBoard> getBoardList();
    
    int updateBoard(ModelBoard updateBoard, ModelBoard searchBoard);       
    int deleteBoard(ModelBoard board);
    
    List<ModelBoard> getBoardSearch(ModelBoard board);   
        
}
