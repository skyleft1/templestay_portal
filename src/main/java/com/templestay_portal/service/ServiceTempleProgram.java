package com.templestay_portal.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.templestay_portal.dao.IDaoTempleProgram;
import com.templestay_portal.model.ModelTemple;
import com.templestay_portal.model.ModelTemple_Program;

@Service("servicetempleprogram")
public class ServiceTempleProgram implements IServiceTempleProgram {

    @Autowired
    @Qualifier("daotempleprogram")
    IDaoTempleProgram dao;
    
    @Override
    public int insertTempleProgramOne(ModelTemple_Program board) {
        int result = -1;
        try {
             result = dao.insertTempleProgramOne(board);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }
    @Override
    public ModelTemple_Program getTempleProgramOne(ModelTemple_Program program) {
        ModelTemple_Program result = null;
        try {
             result = dao.getTempleProgramOne(program);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
        
    }
    
    @Override
    public int updateTempleProgram(ModelTemple_Program updatemodel, ModelTemple_Program searchmodel) {
        
        int result = -1;
        try {
            result = dao.updateTempleProgram(updatemodel, searchmodel);
        } catch (Exception e) {
            e.getMessage();
        }
        
        return result;
    }
    
    @Override
    public int deleteTempleProgram(ModelTemple_Program board) {
        int result = -1;
        try {
            result = dao.deleteTempleProgram(board);
        } catch (Exception e) {
            e.getMessage();
        }
        
        return result;
    }

    @Override
    public List<ModelTemple_Program> getTempleProgramList(ModelTemple_Program temp) {
        List<ModelTemple_Program> result = null;
        try {
            result = dao.getTempleProgramList(temp);
        } catch (Exception e) {
            e.getMessage();
        }
        
        return result;
    }


}
