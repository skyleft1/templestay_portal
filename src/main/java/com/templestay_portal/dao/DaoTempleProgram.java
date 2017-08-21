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
import com.templestay_portal.model.ModelTempleProgram;


@Repository("daotempleprogram")
public class DaoTempleProgram implements IDaoTempleProgram {

    @Autowired
    @Qualifier("sqlSession")
    SqlSession session;

    @Override
    public int insertTempleProgramOne(ModelTempleProgram program) {
        return session.insert("mapper.mappertemple.insertTempleProgramOne", program);
    }


    @Override
    public ModelTempleProgram getTempleProgramOne(ModelTempleProgram program) {
        return session.selectOne("mapper.mappertemple.getTempleProgramOne", program);
    }

    @Override
    public int updateTempleProgram(ModelTempleProgram updatemodel,
            ModelTempleProgram searchmodel) {
        Map<String, ModelTempleProgram> map = new HashMap<String, ModelTempleProgram>();
        map.put("updateValue", updatemodel);
        map.put("searchValue", searchmodel);
        return session.update("mapper.mappertemple.updateTempleProgram", map);
    }

    @Override
    public int deleteTempleProgram(ModelTempleProgram program) {
        return session.delete("mapper.mappertemple.getBoardList", program);
    }

    @Override
    public List<ModelTempleProgram> getTempleProgramList(ModelTempleProgram program) {
        return session.selectList("mapper.mappertemple.getTempleProgramList", program);
    }
}
