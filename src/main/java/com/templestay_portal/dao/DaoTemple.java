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

@Repository("daotemple")
public class DaoTemple implements IDaoTemple {

    @Autowired
    @Qualifier("sqlSession")
    SqlSession session;

    @Override
    public ModelTemple getTempleOne(ModelTemple temple) {
        return session.selectOne("mapper.mappertemple.getTempleOne", temple);
    }

}
