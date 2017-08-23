package com.templestay_portal.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.templestay_portal.dao.IDaoTempleProgram;
import com.templestay_portal.model.ModelTemple;
import com.templestay_portal.model.ModelTempleProgram;

@Service("servicetempleprogram")
public class ServiceTempleProgram implements IServiceTempleProgram {

    @Autowired
    @Qualifier("daotempleprogram")
    IDaoTempleProgram dao;
    
    @Override
    public int insertTempleProgramOne(ModelTempleProgram program) {
        int result = -1;
        try {
             result = dao.insertTempleProgramOne(program);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }
    @Override
    public ModelTempleProgram getTempleProgramOne(ModelTempleProgram program) {
        ModelTempleProgram result = null;
        try {
             result = dao.getTempleProgramOne(program);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
        
    }
    
    @Override
    public int updateTempleProgram(ModelTempleProgram updatemodel, ModelTempleProgram searchmodel) {
        int result = -1;
        try {
            result = dao.updateTempleProgram(updatemodel, searchmodel);
        } catch (Exception e) {
            e.getMessage();
        }
        
        return result;
    }
    
    @Override
    public int deleteTempleProgram(ModelTempleProgram program) {
        int result = -1;
        try {
            result = dao.deleteTempleProgram(program);
        } catch (Exception e) {
            e.getMessage();
        }
        
        return result;
    }

    @Override
    public List<ModelTempleProgram> getTempleProgramList(ModelTempleProgram program) {
        List<ModelTempleProgram> result = null;
        try {
            result = dao.getTempleProgramList(program);
        } catch (Exception e) {
            e.getMessage();
        }
        
        return result;
    }
    @Override
    public int getTempleProgramCount(ModelTempleProgram program) {
        int result = -1;
        try {
             result = dao.getTempleProgramCount(program);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }


}
