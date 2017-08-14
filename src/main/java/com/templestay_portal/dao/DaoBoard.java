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


@Repository("daoboard")
public class DaoBoard implements IDaoBoard {
    // SLF4J Logging
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired
    @Qualifier("sqlSession")
    SqlSession session;

    @Override
    public int insertBoard(ModelBoard board) {
        return session.insert("mapper.mapperBoard.insertBoard", board);
    }

    @Override
    public int insertBoardList(List<ModelBoard> boardlist) {
        return session.insert("mapper.mapperBoard.insertBoardList", boardlist);
    }

    @Override
    public ModelBoard getBoardOne(String boardcd) {
        return session.selectOne("mapper.mapperBoard.getBoardOne", boardcd);
    }

    @Override
    public List<ModelBoard> getBoardList() {
        return session.selectList("mapper.mapperBoard.getBoardList");
    }

    @Override
    public int updateBoard(ModelBoard updateBoard, ModelBoard searchBoard) {
        Map<String, ModelBoard> map = new HashMap<String, ModelBoard>();
        map.put("updateValue", updateBoard);
        map.put("searchValue", searchBoard);
        return session.update("mapper.mapperBoard.updateBoard", map);  
    }

    @Override
    public int deleteBoard(ModelBoard board) {
        return session.update("mapper.mapperBoard.deleteBoard", board);    
    }

    @Override
    public List<ModelBoard> getBoardSearch(ModelBoard board) {
        return session.selectList("mapper.mapperBoard.getBoardSearch", board);        
    }
   
    
    
}
