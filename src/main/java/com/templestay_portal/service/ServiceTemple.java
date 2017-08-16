package com.templestay_portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.templestay_portal.dao.IDaoTemple;
import com.templestay_portal.model.ModelTemple;

@Service("servicetemple")
public class ServiceTemple implements IServiceTemple {

    @Autowired
    @Qualifier("daotemple")
    IDaoTemple dao;
    
    @Override
    public ModelTemple getTempleOne(ModelTemple temple) {
        ModelTemple result = null;
        try {
             result = dao.getTempleOne(temple);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }


}
