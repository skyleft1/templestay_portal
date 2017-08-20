package com.templestay_portal.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.templestay_portal.model.ModelUpload;

@Repository
public class DaoUpload implements IDaoUpload {

    @Autowired
    @Qualifier("sqlSession")
    private SqlSession session;

    
    public List<ModelUpload> getImageList(int programno) {
        return session.selectList("mapper.mapperUpload.getImageList", programno);
    }
    public ModelUpload getImageByte(int attachfileno) {
        return session.selectOne("mapper.mapperUpload.getImageByte", attachfileno);
    }
    
    public int insertPhoto(ModelUpload attachfile) {
        session.insert("mapper.mapperUpload.insertPhoto", attachfile );
        return attachfile.getUploadImageNo();
    }
    

}
