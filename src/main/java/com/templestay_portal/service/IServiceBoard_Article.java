package com.templestay_portal.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.templestay_portal.model.ModelBoard;
import com.templestay_portal.model.ModelBoard_Article;

public interface IServiceBoard_Article {
    
    int insertBoard_Article( ModelBoard_Article board_article );
    
    ModelBoard_Article getBoard_Article(int articleno);
    List<ModelBoard_Article> getBoard_ArticleList();
    
    int updateBoard_ArticleList(ModelBoard_Article updateBoard_article, ModelBoard_Article searchBoard_article);       
    int deleteBoard_ArticleList(ModelBoard_Article board_article);
           
}
