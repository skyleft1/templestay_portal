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

import com.templestay_portal.model.ModelBoard;
import com.templestay_portal.model.ModelBoard_Article;

@Repository("daoboard_article")
public class DaoBoard_Article implements IDaoBoard_Article{
    // SLF4J Logging
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired
    @Qualifier("sqlSession")
    SqlSession session;

    @Override
    public int insertBoard_Article(ModelBoard_Article board_article) {
        return session.insert("mapper.mapperBoard.insertBoard_Article", board_article);
    }

    @Override
    public ModelBoard_Article getBoard_Article(int articleno) {
        return session.selectOne("mapper.mapperBoard.getBoardOne", articleno);
    }

    @Override
    public List<ModelBoard_Article> getBoard_ArticleList() {
        return session.selectList("mapper.mapperBoard.getBoard_ArticleList");
    }

    @Override
    public int updateBoard_ArticleList(ModelBoard_Article updateBoard_article,
            ModelBoard_Article searchBoard_article) {
        Map<String, ModelBoard_Article> map = new HashMap<String, ModelBoard_Article>();
        map.put("updateValue", updateBoard_article);
        map.put("searchValue", searchBoard_article);
        return session.update("mapper.mapperBoard.updateBoard_ArticleList", map);  
    }

    @Override
    public int deleteBoard_ArticleList(ModelBoard_Article board_article) {
        return session.update("mapper.mapperBoard.deleteBoard_ArticleList", board_article);  
    }
}
