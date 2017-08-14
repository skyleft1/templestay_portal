package com.templestay_portal.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.templestay_portal.dao.IDaoBoard;
import com.templestay_portal.model.ModelBoard;


@Service("serviceboard")
public class ServiceBoard implements IServiceBoard {
    // SLF4J Logging
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired
    @Qualifier("daoboard")
    IDaoBoard dao;

    @Override
    public int insertBoard(ModelBoard board) {
        int result = -1;
        try {
            result = dao.insertBoard(board);
        } catch (Exception e) {
            logger.error("insertBoard " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public int insertBoardList(List<ModelBoard> boardlist) {
        int result = -1;
        try {
            result = dao.insertBoardList(boardlist);
        } catch (Exception e) {
            logger.error("insertBoardList " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public ModelBoard getBoardOne(String boardcd) {
        ModelBoard result = null;
        try {
            result = dao.getBoardOne(boardcd);
        } catch (Exception e) {
            logger.error("getBoardOne " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public List<ModelBoard> getBoardList() {
        List<ModelBoard> result = null;
        try {
            result = dao.getBoardList();
        } catch (Exception e) {
            logger.error("getBoardList " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public int updateBoard(ModelBoard updateBoard, ModelBoard searchBoard) {
        int result = -1;
        try {
            result = dao.updateBoard(updateBoard, searchBoard);
        } catch (Exception e) {
            logger.error("updateBoard" + e.getMessage() );
        }        
        return result;
    }

    @Override
    public int deleteBoard(ModelBoard board) {
        int result = -1;
        try {
            result = dao.deleteBoard(board);
        } catch (Exception e) {
            logger.error("deleteBoard" + e.getMessage() );
        }        
        return result;
    }

    @Override
    public List<ModelBoard> getBoardSearch(ModelBoard board) {
        List<ModelBoard> result = null;
        try {
            result = dao.getBoardSearch(board);
        } catch (Exception e) {
            logger.error("getBoardSearch " + e.getMessage() );
        }        
        return result;
    }
    
}
