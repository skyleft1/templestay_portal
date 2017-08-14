package com.templestay_portal.service;


import com.templestay_portal.dao.IDaoUser;
import com.templestay_portal.model.ModelUser;
public interface IServiceUser extends IDaoUser {

    int insertuser (ModelUser user);
    ModelUser login(ModelUser user);
    int edituser (ModelUser user);
}
