package com.templestay_portal.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.templestay_portal.model.ModelBoard_Article_Attachfile;

@Repository("daoboard_article_attachfile")
public class DaoBoard_Article_Attachfile implements IDaoBoard_Article_Attachfile {
    // SLF4J Logging
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired
    @Qualifier("sqlSession")
    SqlSession session;

    @Override
    public int insertBoard_Article_Attachfile(
            ModelBoard_Article_Attachfile board_article_comment_attachfile) {
        return session.insert("mapper.mapperBoard.insertBoard_Article_Attachfile", board_article_comment_attachfile);
    }

    @Override
    public ModelBoard_Article_Attachfile getBoard_Article_Attachfile(
            int attachfileno) {
        return session.selectOne("mapper.mapperBoard.getBoard_Article_Attachfile", attachfileno);
    }

    @Override
    public List<ModelBoard_Article_Attachfile> getBoard_Article_AttachfileList() {
        return session.selectList("mapper.mapperBoard.getBoard_Article_AttachfileList");
    }

    @Override
    public int deleteBoard_Article_AttachfileList(
            ModelBoard_Article_Attachfile board_article_comment_attachfile) {
        return session.update("mapper.mapperBoard.deleteBoard_Article_AttachfileList", board_article_comment_attachfile);  
    }
}
