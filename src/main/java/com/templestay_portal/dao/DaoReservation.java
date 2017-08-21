package com.templestay_portal.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.templestay_portal.model.ModelReservation;


@Repository("daoreservation")
public class DaoReservation implements IDaoReservation {

    @Autowired
    @Qualifier("sqlSession")
    SqlSession session;
    
    @Override
    public ModelReservation getReservation(ModelReservation reservation) {
        return session.selectOne("mapper.mapperreservation.getReservation", reservation );
    }
    
    @Override
    public List<ModelReservation> getReservationList(String userid) {
        return session.selectList("mapper.mapperreservation.getReservationList", userid );
    }
    
    @Override
    public int insertReservation(ModelReservation reservation) {
        return session.insert("mapper.mapperreservation.insertReservation", reservation );
    }
    
    @Override
    public int updateReservation(ModelReservation updateValue, ModelReservation searchValue) {
        Map<String, ModelReservation> map = new HashMap<String, ModelReservation>();
        map.put("searchValue", searchValue);
        map.put("updateValue", updateValue);
        return session.update("mapper.mapperreservation.updateReservation", map );
    }
    
    @Override
    public int deleteReservation(int reservationno) {
        return session.delete("mapper.mapperreservation.deleteReservation", reservationno );
    }
}
