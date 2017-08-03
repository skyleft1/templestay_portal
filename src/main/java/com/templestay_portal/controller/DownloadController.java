package com.templestay_portal.controller;


import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.templestay_portal.model.ModelBoard;
import com.templestay_portal.service.IServiceBoard;

@Controller
public class DownloadController {
    
    @Autowired
    IServiceBoard srv;
    
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public String download(Model model
            
            ) {
        logger.info("고고 home");

        
        return "home";
    }
    
}
