package com.templestay_portal.dao;

import java.util.List;

import com.templestay_portal.model.ModelUpload;

public interface IDaoUpload {

    List<ModelUpload> getImageList(int programno);
    ModelUpload getImageByte(int attachfileno);
    
    int insertPhoto(ModelUpload attachfile);
    
}
