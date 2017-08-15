package com.templestay_portal.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.templestay_portal.model.ModelTemple;
import com.templestay_portal.service.IServiceTempleProgram;


/**
 * Handles requests for the application home page.
 */
@Controller
public class TempleProgramController {
	
	private static final Logger logger = LoggerFactory.getLogger(TempleProgramController.class);
	
	@Autowired
	@Qualifier("servicetempleprogram")
	IServiceTempleProgram svr;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	

   	
}
