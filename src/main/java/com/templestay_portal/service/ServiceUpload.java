package com.templestay_portal.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.templestay_portal.dao.IDaoUpload;
import com.templestay_portal.model.ModelUpload;


@Service("serviceupload")
public class ServiceUpload implements IServiceUpload {

    @Autowired
    private IDaoUpload uploaddao;

    @Override
    public List<ModelUpload> getImageList(int programno) {
        List<ModelUpload> result = null;
        try {
            result = uploaddao.getImageList(programno);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }    
    
    @Override
    public ModelUpload getImageByte(int attachfileno) {
        ModelUpload result = null;
        try {
            result = uploaddao.getImageByte(attachfileno);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }    
    
    @Override
    public int insertPhoto(ModelUpload attachfile) {
        int result = -1;
        try {
            result = uploaddao.insertPhoto(attachfile);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }
    

}
