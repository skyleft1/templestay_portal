package com.templestay_portal.start;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("connect");
		
//		model.addAttribute("serverTime", formattedDate );
		return "index";
	}
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Locale locale, Model model) {
        logger.info("connect");
        
        return "login";
    }
    @RequestMapping(value = "/loginAction", method = RequestMethod.GET)
    public String loginAction(Locale locale, Model model) {
        logger.info("connect");
        
        return "loginAction";
    }
    
    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public String join(Locale locale, Model model) {
        logger.info("connect");
        
        return "join";
    }
    @RequestMapping(value = "/joinAction", method = RequestMethod.GET)
    public String joinAction(Locale locale, Model model) {
        logger.info("connect");
        
        return "joinAction";
    }
    @RequestMapping(value = "/bbs", method = RequestMethod.GET)
    public String bbs(Locale locale, Model model) {
        logger.info("connect");
        
        return "bbs";
    }
    @RequestMapping(value = "/bbs_view", method = RequestMethod.GET)
    public String bbs_view(Locale locale, Model model) {
        logger.info("connect");
        
        return "bbs_view";
    }
}
