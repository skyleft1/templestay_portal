package com.templestay_portal.dao;

import java.util.List;

import com.templestay_portal.model.ModelTemple;


public interface IDaoTemple {
    
    ModelTemple getTempleOne(ModelTemple temple);
    List<ModelTemple> getTempleList(ModelTemple temple);

}
