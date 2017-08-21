package com.templestay_portal.controller;

import java.util.*;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.templestay_portal.model.ModelUpload;
import com.templestay_portal.service.IServiceUpload;

@Controller
@RequestMapping("/upload")
public class UploadController  {

    private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
    
    @Autowired
	private IServiceUpload srvupload; 
	
    @RequestMapping(value="/upload_image", method = RequestMethod.GET)
    public String upload_image() {
        return "upload/upload_image";
    }

    
    @RequestMapping(value="/upload_image", method = RequestMethod.POST)
    public String upload_image_post(Model model 
            , @RequestParam String upDir
            , @ModelAttribute ModelUpload vo
            ) {
        logger.info("upload_image");
        
        try {
            vo.setFileName( vo.getImage().getOriginalFilename() );
            vo.setFileSize( (Long)vo.getImage().getSize() );
            vo.setContentType( vo.getImage().getContentType() ); // 확장자
            vo.setImageBytes( vo.getImage().getBytes() );
            vo.setImageBase64( Base64.getEncoder().encodeToString( vo.getImage().getBytes() ) );
            vo.setProgramno(vo.getProgramno());
            
            int result = srvupload.insertPhoto(vo); 
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return "redirect:/upload/upload_image";
    }
    /**
     * 임의의 뷰페이지
     * @return
     */
    @RequestMapping(value="/upload/upload_image_view/", method = RequestMethod.GET)
    public String imageview(Model model
            , @PathVariable int attachfileno
            ) {
        logger.info("upload_image_view");

        ModelUpload result = srvupload.getImageByte(attachfileno);
        
        model.addAttribute("attachfileno", attachfileno);
        model.addAttribute("contentType", result.getContentType() );
        model.addAttribute("imageBase64", result.getImageBase64() );
        
        return "upload/upload_image_view";
    }
    
}
