package com.templestay_portal.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import com.templestay_portal.model.ModelReservation;
import com.templestay_portal.model.ModelTemple;
import com.templestay_portal.model.ModelTempleProgram;
import com.templestay_portal.model.ModelUpload;
import com.templestay_portal.model.ModelUser;
import com.templestay_portal.service.IServiceReservation;
import com.templestay_portal.service.IServiceTemple;
import com.templestay_portal.service.IServiceTempleProgram;
import com.templestay_portal.service.IServiceUpload;
import com.templestay_portal.service.IServiceUser;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

    @Autowired
    IServiceTemple srvtemple;
    
    @Autowired
    IServiceTempleProgram srvtemplerogram;
    
    @Autowired
    IServiceReservation srvreservation;
    @Autowired
    IServiceUpload srvupload;

	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@RequestMapping(value = "/reservation_list", method = RequestMethod.GET)
	public String reservation_list(Model model
	        , @RequestParam(value="location", defaultValue="") String location
	        , @RequestParam(value="thema", defaultValue="") String thema
	        , @RequestParam(value="reserve_date", defaultValue="") String reserve_date
	        , @RequestParam(value="searchword", defaultValue="") String searchword
	        , HttpSession session
	        ) throws ParseException {
		logger.info("reservation_list");

		
        ModelTempleProgram program = new ModelTempleProgram();
        int count = -1;
        
        // 지역에 해당 프로그램 수 보여주기
        program.setTempleaddr_jibun("경기");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count1", count);
        
        program.setTempleaddr_jibun("강원");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count2", count);
        
        program.setTempleaddr_jibun("제주");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count3", count);
        
        program.setTempleaddr_jibun("인천");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count4", count);
        
        program.setTempleaddr_jibun("충남");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count5", count);
        
        program.setTempleaddr_jibun("충북");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count6", count);
        
        program.setTempleaddr_jibun("경남");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count7", count);
        
        program.setTempleaddr_jibun("경북");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count8", count);
        
        program.setTempleaddr_jibun("전남");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count9", count);
        
        program.setTempleaddr_jibun("전북");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count10", count);
        
        program.setTempleaddr_jibun("부산");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count11", count);
        
        program.setTempleaddr_jibun("서울");
        count = srvtemplerogram.getTempleProgramCount(program);
        model.addAttribute("count12", count);
		
		
		
		
		
		ModelTempleProgram templeprogram = new ModelTempleProgram();
		List<ModelTempleProgram> list = new ArrayList<ModelTempleProgram>();
		
		templeprogram.setTemplecd(searchword);
		templeprogram.setTempleaddr_jibun(location);
		templeprogram.setProgramtype(thema);
		
 		if(reserve_date.hashCode() != 0){
		    SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
	        Date checkdate = transFormat.parse(reserve_date);
	        templeprogram.setCheckdate(checkdate);
		}
		
		list.addAll( srvtemplerogram.getTempleProgramList(templeprogram) );

		model.addAttribute("list_size", list.size());
		model.addAttribute("list", list);
		
		// 날짜 유지
		model.addAttribute("reserve_date", reserve_date);
		
		return "reservation/reservation_list";
	}
	
	
    @RequestMapping(value = "/reservation_view", method = RequestMethod.GET)
    public String reservation_view(Model model
            , @RequestParam(value="programno", defaultValue="") Integer programno
            , @RequestParam(value="reserve_date", defaultValue="") String reserve_date
            , HttpSession session) {
        
        logger.info("reservation_view");
        
        // 프로그램 값들 내보내기 
        ModelTempleProgram program = new ModelTempleProgram();
        program.setProgramno(programno);
        ModelTempleProgram program1 = srvtemplerogram.getTempleProgramOne(program);
        
        model.addAttribute("program1", program1);

        ModelTemple temple = new ModelTemple();
        // program1의 templecd값을 가져와 temple에 set 해줌
        temple.setTemplecd(program1.getTemplecd());
        ModelTemple temple1 = srvtemple.getTempleOne(temple);
        model.addAttribute("temple1", temple1);
        
        // 이미지 보여주기
        List<ModelUpload> list = srvupload.getImageList(programno);
        model.addAttribute("list", list);
        
        // 날짜 유지
        model.addAttribute("reserve_date", reserve_date);
        
        // 좌표 쏴주기
        
        return "reservation/reservation_view";
    }
    
    @RequestMapping(value = "/reservation_reservation", method = RequestMethod.GET)
    public String reservation_reservation(Model model
            , @RequestParam(value="programno", defaultValue="") Integer programno
            , @RequestParam(value="reserve_date", defaultValue="") String reserve_date
            , HttpSession session) {
        logger.info("reservation_reservation");
        
        ModelUser user = (ModelUser) session.getAttribute(WebConstants.SESSION_NAME);
        
        
        // 프로그램 값들 내보내기
        ModelTempleProgram program = new ModelTempleProgram();
        program.setProgramno(programno);
        ModelTempleProgram program1 = srvtemplerogram.getTempleProgramOne(program);
        
        model.addAttribute("program1", program1);

        ModelTemple temple = new ModelTemple();
        // program1의 templecd값을 가져와 temple에 set 해줌
        temple.setTemplecd(program1.getTemplecd());
        ModelTemple temple1 = srvtemple.getTempleOne(temple);
        
        model.addAttribute("temple1", temple1);
        
     // 날짜 유지
        model.addAttribute("reserve_date", reserve_date);
        
        return "reservation/reservation_reservation";
    }
    
    @RequestMapping(value = "/reservation_reservation_success", method = RequestMethod.POST)
    public String reservation_reservation_success(Model model
            , @ModelAttribute ModelReservation reservation 
            , HttpSession session
            ) {
        logger.info("reservation_reservation_success");
        
        int result = srvreservation.insertReservation(reservation); 
        
        
        if (result == 1){
            // 예약번호를 예약한 사용자에게 보여주기 위함
            int reservationno = srvreservation.getReservationno(reservation);
            model.addAttribute("reservationno", reservationno);
            return "reservation/reservation_reservation_success";
        }
        else{
            return "redirect:/reservation/reservation_reservation";            
        }
        
    }
    
    @RequestMapping(value = "/reservation_reservation_delete", method = RequestMethod.GET)
    public String reservation_reservation_delete(Model model
            , @RequestParam(value="reservationno", defaultValue="") Integer reservationno
            , HttpSession session
            ) {
        logger.info("reservation_reservation_delete");
        
        int result = srvreservation.deleteReservation(reservationno); 
        
        if (result == 1){
            return "reservation/reservation_reservation_delete_success";
        }
        else{
            return "redirect:/user/user_confirm_reservation_one";           
        }
        
    }
}
