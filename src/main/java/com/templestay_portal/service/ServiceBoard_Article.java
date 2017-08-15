package com.templestay_portal.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.templestay_portal.dao.IDaoBoard_Article;
import com.templestay_portal.model.ModelBoard;
import com.templestay_portal.model.ModelBoard_Article;

@Service("serviceboard_article")
public class ServiceBoard_Article implements IServiceBoard_Article{
    // SLF4J Logging
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired
    @Qualifier("daoboard_article")
    IDaoBoard_Article dao;

    @Override
    public int insertBoard_Article(ModelBoard_Article board_article) {
        int result = -1;
        try {
            result = dao.insertBoard_Article(board_article);
        } catch (Exception e) {
            logger.error("insertBoard_Article " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public ModelBoard_Article getBoard_Article(int articleno) {
        ModelBoard_Article result = null;
        try {
            result = dao.getBoard_Article(articleno);
        } catch (Exception e) {
            logger.error("getBoard_Article " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public List<ModelBoard_Article> getBoard_ArticleList() {
        List<ModelBoard_Article> result = null;
        try {
            result = dao.getBoard_ArticleList();
        } catch (Exception e) {
            logger.error("getBoard_ArticleList " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public int updateBoard_ArticleList(ModelBoard_Article updateBoard_article,
            ModelBoard_Article searchBoard_article) {
        int result = -1;
        try {
            result = dao.updateBoard_ArticleList(updateBoard_article, searchBoard_article);
        } catch (Exception e) {
            logger.error("updateBoard_ArticleList" + e.getMessage() );
        }        
        return result;
    }

    @Override
    public int deleteBoard_ArticleList(ModelBoard_Article board_article) {
        int result = -1;
        try {
            result = dao.deleteBoard_ArticleList(board_article);
        } catch (Exception e) {
            logger.error("deleteBoard_ArticleList" + e.getMessage() );
        }        
        return result;
    }
}
