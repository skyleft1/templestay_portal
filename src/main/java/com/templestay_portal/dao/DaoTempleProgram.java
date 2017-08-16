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

import com.templestay_portal.model.ModelTemple;
import com.templestay_portal.model.ModelTemple_Program;

@Repository("daotempleprogram")
public class DaoTempleProgram implements IDaoTempleProgram {

    @Autowired
    @Qualifier("sqlSession")
    SqlSession session;

    @Override
    public int insertTempleProgramOne(ModelTemple_Program board) {
        return session.insert("mapper.mappertemple.insertTempleProgramOne", board);
    }


    @Override
    public ModelTemple_Program getTempleProgramOne(ModelTemple_Program program) {
        return session.selectOne("mapper.mappertemple.getTempleProgramOne", program);
    }

    @Override
    public int updateTempleProgram(ModelTemple_Program updatemodel,
            ModelTemple_Program searchmodel) {
        Map<String, ModelTemple_Program> map = new HashMap<String, ModelTemple_Program>();
        map.put("updateValue", updatemodel);
        map.put("searchValue", searchmodel);
        return session.update("mapper.mappertemple.updateTempleProgram", map);
    }

    @Override
    public int deleteTempleProgram(ModelTemple_Program temple) {
        return session.delete("mapper.mappertemple.getBoardList", temple);
    }

    @Override
    public List<ModelTemple_Program> getTempleProgramList(ModelTemple_Program temp) {
        return session.selectList("mapper.mappertemple.getTempleProgramList", temp);
    }
}
