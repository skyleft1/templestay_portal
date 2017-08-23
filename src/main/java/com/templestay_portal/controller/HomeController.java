package com.templestay_portal.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.templestay_portal.model.ModelTempleProgram;
import com.templestay_portal.model.ModelUpload;
import com.templestay_portal.service.IServiceTemple;
import com.templestay_portal.service.IServiceTempleProgram;
import com.templestay_portal.service.IServiceUpload;

@Controller
public class HomeController {
	
    @Autowired
    IServiceTempleProgram srvprogram; 

    
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("home");
		
		return "home";
	}

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
        logger.info("index");
        
        ModelTempleProgram program = new ModelTempleProgram();
        int count = -1;
        
        // 지역에 해당 프로그램 수 보여주기
        program.setTempleaddr_jibun("경기");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count1", count);
        
        program.setTempleaddr_jibun("강원");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count2", count);
        
        program.setTempleaddr_jibun("제주");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count3", count);
        
        program.setTempleaddr_jibun("인천");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count4", count);
        
        program.setTempleaddr_jibun("충남");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count5", count);
        
        program.setTempleaddr_jibun("충북");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count6", count);
        
        program.setTempleaddr_jibun("경남");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count7", count);
        
        program.setTempleaddr_jibun("경북");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count8", count);
        
        program.setTempleaddr_jibun("전남");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count9", count);
        
        program.setTempleaddr_jibun("전북");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count10", count);
        
        program.setTempleaddr_jibun("부산");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count11", count);
        
        program.setTempleaddr_jibun("서울");
        count = srvprogram.getTempleProgramCount(program);
        model.addAttribute("count12", count);
       /* 
        // 테마에 해당 프로그램 수 보여주기
        ModelTempleProgram program_thema = new ModelTempleProgram();
        program_thema.setProgramtype("휴식형");
        count = srvprogram.getTempleProgramCount(program_thema);
        model.addAttribute("thema1", count);
        program_thema.setProgramtype("자유형");
        count = srvprogram.getTempleProgramCount(program_thema);
        model.addAttribute("thema2", count);
        program_thema.setProgramtype("체험형");
        count = srvprogram.getTempleProgramCount(program_thema);
        model.addAttribute("thema3", count);
        */
        
        // 광고 배너 이미지 출력
        program.setProgramno(1);
        ModelTempleProgram program1 = srvprogram.getTempleProgramOne(program);
        model.addAttribute("program1", program1);
        
        program.setProgramno(5);
        ModelTempleProgram program2 = srvprogram.getTempleProgramOne(program);
        model.addAttribute("program2", program2);
        
        program.setProgramno(9);
        ModelTempleProgram program3 = srvprogram.getTempleProgramOne(program);
        model.addAttribute("program3", program3);
        
        program.setProgramno(12);
        ModelTempleProgram program4 = srvprogram.getTempleProgramOne(program);
        model.addAttribute("program4", program4);
        
        program.setProgramno(16);
        ModelTempleProgram program5 = srvprogram.getTempleProgramOne(program);
        model.addAttribute("program5", program5);
        
        program.setProgramno(24);
        ModelTempleProgram program6 = srvprogram.getTempleProgramOne(program);
        model.addAttribute("program6", program6);
        
        
        return "index"; 
    }
}
 
