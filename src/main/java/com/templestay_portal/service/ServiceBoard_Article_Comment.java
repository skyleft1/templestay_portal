package com.templestay_portal.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.templestay_portal.dao.IDaoBoard;
import com.templestay_portal.dao.IDaoBoard_Article_Comment;
import com.templestay_portal.model.ModelBoard;
import com.templestay_portal.model.ModelBoard_Article_Comment;

@Service("serviceboard_article_comment")
public class ServiceBoard_Article_Comment implements IServiceBoard_Article_Comment {
    // SLF4J Logging
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired
    @Qualifier("daoboard_article_comment")
    IDaoBoard_Article_Comment dao;

    @Override
    public int insertBoard_Article_Comment(
            ModelBoard_Article_Comment board_article_comment) {
        int result = -1;
        try {
            result = dao.insertBoard_Article_Comment(board_article_comment);
        } catch (Exception e) {
            logger.error("insertBoard_Article_Comment " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public ModelBoard_Article_Comment getBoard_Article_Comment(int commentno) {
        ModelBoard_Article_Comment result = null;
        try {
            result = dao.getBoard_Article_Comment(commentno);
        } catch (Exception e) {
            logger.error("getBoard_Article_Comment " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public List<ModelBoard_Article_Comment> getBoard_Article_CommentList() {
        List<ModelBoard_Article_Comment> result = null;
        try {
            result = dao.getBoard_Article_CommentList();
        } catch (Exception e) {
            logger.error("getBoard_Article_CommentList " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public int updateBoard_Article_Comment(
            ModelBoard_Article_Comment updateBoard_article_comment,
            ModelBoard_Article_Comment searchBoard_article_comment) {
        int result = -1;
        try {
            result = dao.updateBoard_Article_Comment(updateBoard_article_comment, searchBoard_article_comment);
        } catch (Exception e) {
            logger.error("updateBoard_Article_Comment" + e.getMessage() );
        }        
        return result;
    }

    @Override
    public int deleteBoard_Article_Comment(
            ModelBoard_Article_Comment board_article_comment) {
        int result = -1;
        try {
            result = dao.deleteBoard_Article_Comment(board_article_comment);
        } catch (Exception e) {
            logger.error("deleteBoard_Article_Comment" + e.getMessage() );
        }        
        return result;
    }
}
