package com.templestay_portal.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import com.templestay_portal.model.ModelUser;

@Repository("daouser")
public class DaoUser implements IDaoUser {
    
    @Autowired
    @Qualifier("sqlSession")
    SqlSession session;
    
    @Override
    public int insertuser(ModelUser user) {
        return session.insert("mapper.mysql.mapperuser.insertuser",user);
    }
 
    @Override
    public ModelUser login( ModelUser user) {
        return session.selectOne("mapper.mysql.mapperuser.login",user);
    }

    @Override
    public int edituser(ModelUser user) {
        return session.update("mapper.mysql.mapperuser.edituser",user);
    }
}
