package com.templestay_portal.dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.templestay_portal.model.ModelTemple;
import com.templestay_portal.model.ModelTempleProgram;


public interface IDaoTempleProgram {
    
    ModelTempleProgram getTempleProgramOne(ModelTempleProgram program);
    int updateTempleProgram(ModelTempleProgram updatemodel, ModelTempleProgram searchmodel);
    int deleteTempleProgram(ModelTempleProgram temp);
    List<ModelTempleProgram> getTempleProgramList(ModelTempleProgram temp);
    int insertTempleProgramOne(ModelTempleProgram temp);
    

}
