package com.templestay_portal.dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.templestay_portal.model.ModelBoard_Article_Attachfile;
import com.templestay_portal.model.ModelBoard_Article_Comment;

public interface IDaoBoard_Article_Attachfile {
    
    int insertBoard_Article_Attachfile( ModelBoard_Article_Attachfile board_article_comment_attachfile );
    
    ModelBoard_Article_Attachfile getBoard_Article_Attachfile(int attachfileno);
    List<ModelBoard_Article_Attachfile> getBoard_Article_AttachfileList();
    
    int deleteBoard_Article_AttachfileList(ModelBoard_Article_Attachfile board_article_comment_attachfile);
}
