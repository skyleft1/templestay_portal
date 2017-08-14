package com.templestay_portal.dao;

import com.templestay_portal.model.ModelUser;


public interface IDaoUser {
        
    int insertuser(ModelUser user);
    ModelUser login(ModelUser user);
    int edituser(ModelUser user);
    
}
