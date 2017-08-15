package com.templestay_portal.controller;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.templestay_portal.commons.WebConstants;
import com.templestay_portal.model.ModelTemple_Program;
import com.templestay_portal.model.ModelUser;
import com.templestay_portal.service.IServiceReservation;
import com.templestay_portal.service.IServiceTempleProgram;
import com.templestay_portal.service.IServiceUser;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

    @Autowired
    @Qualifier("servicetempleprogram")
    IServiceTempleProgram srvtemp;

	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@RequestMapping(value = "/reservation_list", method = RequestMethod.GET)
	public String reservation_list(Model model
	        , @RequestParam(value="location", defaultValue="") String location
	        , @RequestParam(value="thema", defaultValue="") String thema
	        , @RequestParam(value="reserve_date", defaultValue="") String reserve_date
	        , HttpSession session
	        ) {
		logger.info("reservation_list");

		// get으로  temple의 이름, 번호, 다 + templeprogram 의 날짜 프로그램 이름 등 모두

		ModelTemple_Program temp1 = new ModelTemple_Program();
		// location 활용하기 추가
		temp1.setProgramtype(thema);
	    // reserve_date 활용하기 추가
		
		
		List<ModelTemple_Program> list = srvtemp.getTempleProgramList(temp1);
		model.addAttribute("list", list);
		
		return "reservation/reservation_list";
	}
	
	
	   @RequestMapping(value = "/reservation_view", method = RequestMethod.GET)
	    public String reservation_view(Model model
	            , HttpSession session
	            ) {
	        logger.info("reservation_view");

	        return "reservation/reservation_view";
	   }
	   
	   @RequestMapping(value = "/reservation_reservation", method = RequestMethod.GET)
       public String reservation_reservation(Model model
               , HttpSession session
               ) {
           logger.info("reservation_reservation");

           return "reservation/reservation_reservation";
       }
	   
	   
       @RequestMapping(value = "/reservation_reservation_success", method = RequestMethod.GET)
       public String reservation_reservation_success(Model model
               , HttpSession session
               ) {
           logger.info("reservation_reservation_success");

           return "reservation/reservation_reservation_success";
       }
}
