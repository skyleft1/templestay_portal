package com.templestay_portal.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.templestay_portal.dao.IDaoUser;
import com.templestay_portal.model.ModelUser;

@Service("serviceuser")

public class ServiceUser implements IServiceUser {
    // SLF4J Logging
    private static Logger logger = LoggerFactory.getLogger(ServiceUser.class);

    @Autowired
    @Qualifier("daouser")
    IDaoUser dao;

    @Override
    public int insertuser(ModelUser user) {
        int result = -1;
        try {
            result = dao.insertuser(user);
        } catch (Exception e) {
            logger.error("insertuser" + e.getMessage());
        }
        return result;
    }

    @Override
    public ModelUser login (ModelUser user) {
        ModelUser result = null;
        try {
            result = dao.login(user);
        } catch (Exception e) {
            logger.error("login" + e.getMessage());
        }
        return result;
    }

    @Override
    public int edituser(ModelUser user) {
        int result = -1;
        try {
            result = dao.edituser(user);
        } catch (Exception e) {
            logger.error("edituser" + e.getMessage());
        }
        return result;
    }
    

    
}

