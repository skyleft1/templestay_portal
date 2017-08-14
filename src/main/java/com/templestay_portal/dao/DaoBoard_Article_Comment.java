package com.templestay_portal.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.templestay_portal.model.ModelBoard_Article;
import com.templestay_portal.model.ModelBoard_Article_Comment;

@Repository("daoboard_article_comment")
public class DaoBoard_Article_Comment implements IDaoBoard_Article_Comment{
    // SLF4J Logging
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired
    @Qualifier("sqlSession")
    SqlSession session;

    @Override
    public int insertBoard_Article_Comment(
            ModelBoard_Article_Comment board_article_comment) {
        return session.insert("mapper.mapperBoard.insertBoard_Article_Comment", board_article_comment);
    }

    @Override
    public ModelBoard_Article_Comment getBoard_Article_Comment(int commentno) {
        return session.selectOne("mapper.mapperBoard.getBoard_Article_Comment", commentno);
    }

    @Override
    public List<ModelBoard_Article_Comment> getBoard_Article_CommentList() {
        return session.selectList("mapper.mapperBoard.getBoard_Article_CommentList");
    }

    @Override
    public int updateBoard_Article_Comment(
            ModelBoard_Article_Comment updateBoard_article_comment,
            ModelBoard_Article_Comment searchBoard_article_comment) {
        Map<String, ModelBoard_Article_Comment> map = new HashMap<String, ModelBoard_Article_Comment>();
        map.put("updateValue", updateBoard_article_comment);
        map.put("searchValue", searchBoard_article_comment);
        return session.update("mapper.mapperBoard.updateBoard_Article_Comment", map);  
    }

    @Override
    public int deleteBoard_Article_Comment(
            ModelBoard_Article_Comment board_article_comment) {
        return session.update("mapper.mapperBoard.deleteBoard_Article_Comment", board_article_comment);  
    }
}
