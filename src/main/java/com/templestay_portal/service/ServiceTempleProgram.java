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
    // SLF4J Logging
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired
    @Qualifier("daotempleprogram")
    IDaoTempleProgram dao;
    

    
    @Override
    public int insertTempleProgramOne(ModelTemple_Program board) {
        int result = -1;
        try {
             result = dao.insertTempleProgramOne(board);
        } catch (Exception e) {
            logger.error("insertTempleProgramOne" + e.getMessage() );
        }
        return result;
    }
    @Override
    public ModelTemple_Program getTempleProgramOne(String programname) {
        ModelTemple_Program result = null;
        try {
             result = dao.getTempleProgramOne(programname);
        } catch (Exception e) {
            logger.error("getTempleProgramOne" + e.getMessage() );
        }
        return result;
        
    }
    
    @Override
    public int updateTempleProgram(ModelTemple_Program updatemodel, ModelTemple_Program searchmodel) {
        
        int result = -1;
        try {
            result = dao.updateTempleProgram(updatemodel, searchmodel);
        } catch (Exception e) {
            logger.error("updateTempleProgram" + e.getMessage() );
        }
        
        return result;
    }
    
    @Override
    public int deleteTempleProgram(ModelTemple_Program board) {
        int result = -1;
        try {
            result = dao.deleteTempleProgram(board);
        } catch (Exception e) {
            logger.error("deleteTempleProgram" + e.getMessage());
        }
        
        return result;
    }

    @Override
    public List<ModelTemple_Program> getTempleProgramList(ModelTemple_Program temp) {
        List<ModelTemple_Program> result = null;
        try {
            result = dao.getTempleProgramList(temp);
        } catch (Exception e) {
            logger.error("getTempleProgramList " + e.getMessage() );
        }
        
        return result;
    }


}
