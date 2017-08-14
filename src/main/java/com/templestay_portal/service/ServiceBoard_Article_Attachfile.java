package com.templestay_portal.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.templestay_portal.dao.IDaoBoard_Article_Attachfile;
import com.templestay_portal.dao.IDaoBoard_Article_Comment;
import com.templestay_portal.model.ModelBoard_Article_Attachfile;
import com.templestay_portal.model.ModelBoard_Article_Comment;

@Service("serviceboard_article_attachfile")
public class ServiceBoard_Article_Attachfile implements IServiceBoard_Article_Attachfile{
    // SLF4J Logging
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    @Qualifier("daoboard_article_attachfile")
    IDaoBoard_Article_Attachfile dao;
    
    @Override
    public int insertBoard_Article_Attachfile(
            ModelBoard_Article_Attachfile board_article_comment_attachfile) {
        int result = -1;
        try {
            result = dao.insertBoard_Article_Attachfile(board_article_comment_attachfile);
        } catch (Exception e) {
            logger.error("insertBoard_Article_Attachfile " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public ModelBoard_Article_Attachfile getBoard_Article_Attachfile(
            int attachfileno) {
        ModelBoard_Article_Attachfile result = null;
        try {
            result = dao.getBoard_Article_Attachfile(attachfileno);
        } catch (Exception e) {
            logger.error("getBoard_Article_Attachfile " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public List<ModelBoard_Article_Attachfile> getBoard_Article_AttachfileList() {
        List<ModelBoard_Article_Attachfile> result = null;
        try {
            result = dao.getBoard_Article_AttachfileList();
        } catch (Exception e) {
            logger.error("getBoard_Article_AttachfileList " + e.getMessage() );
        }        
        return result;
    }

    @Override
    public int deleteBoard_Article_AttachfileList(
            ModelBoard_Article_Attachfile board_article_comment_attachfile) {
        int result = -1;
        try {
            result = dao.deleteBoard_Article_AttachfileList(board_article_comment_attachfile);
        } catch (Exception e) {
            logger.error("deleteBoard_Article_AttachfileList" + e.getMessage() );
        }        
        return result;
    }
}
