package com.templestay_portal.dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.templestay_portal.model.ModelTemple;
import com.templestay_portal.model.ModelTemple_Program;

public interface IDaoTempleProgram {
    
    ModelTemple_Program getTempleProgramOne(ModelTemple_Program program);
    int updateTempleProgram(ModelTemple_Program updatemodel, ModelTemple_Program searchmodel);
    int deleteTempleProgram(ModelTemple_Program temp);
    List<ModelTemple_Program> getTempleProgramList(ModelTemple_Program temp);
    int insertTempleProgramOne(ModelTemple_Program temp);
    

}
