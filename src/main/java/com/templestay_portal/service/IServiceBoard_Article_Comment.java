package com.templestay_portal.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.templestay_portal.model.ModelBoard_Article;
import com.templestay_portal.model.ModelBoard_Article_Comment;

public interface IServiceBoard_Article_Comment {
    
    int insertBoard_Article_Comment( ModelBoard_Article_Comment board_article_comment );
    
    ModelBoard_Article_Comment getBoard_Article_Comment(int commentno);
    List<ModelBoard_Article_Comment> getBoard_Article_CommentList();
    
    int updateBoard_Article_Comment(ModelBoard_Article_Comment updateBoard_article_comment, ModelBoard_Article_Comment searchBoard_article_comment);       
    int deleteBoard_Article_Comment(ModelBoard_Article_Comment board_article_comment);
}
