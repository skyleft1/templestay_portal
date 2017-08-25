package com.templestay_portal.controller;

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
import com.templestay_portal.model.ModelUser;
import com.templestay_portal.service.IServiceReservation;
import com.templestay_portal.service.IServiceTemple;
import com.templestay_portal.service.IServiceTempleProgram;
import com.templestay_portal.service.IServiceUser;



@Controller
@RequestMapping("/user")
public class UserController {
    
    @Autowired
    @Qualifier("serviceuser")
    IServiceUser srv;
    @Autowired
    IServiceTemple srvtemple;
    @Autowired
    IServiceTempleProgram srvtempleprogram;
    @Autowired
    IServiceReservation srvreservation;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping(value = "/user_login", method = RequestMethod.GET)
	public String login(Model model
	        , @RequestParam(value="programno", defaultValue="") Integer programno
            , @RequestParam(value="reserve_date", defaultValue="") String reserve_date
            /* 예약화면 전에 로그인을 깜박하고 안했을경우 로그인 화면으로 간 후
            로그인 하면 예약화면 가게끔 (유저 편리성)
            */
	        , HttpSession session
	        ) {
		logger.info("user_login");

		// URL을 직접 치고들어오는 상황 회피하자
		ModelUser user = (ModelUser) session.getAttribute(WebConstants.SESSION_NAME);
        if(user != null){
		    return "redirect:/";
		}else{
		    model.addAttribute("programno", programno);
		    model.addAttribute("reserve_date", reserve_date);
		    return "user/user_login";
		    
		}
	}
	
    @RequestMapping(value = "/user_login", method = RequestMethod.POST)
    @ResponseBody
    public Map<String , Object> login(Model model
            , @ModelAttribute ModelUser user
            , @RequestParam(value="userid", defaultValue="") String userid
            , @RequestParam(value="userpassword", defaultValue="") String userpassword
            , @RequestParam(value="programno", defaultValue="") Integer programno
            , @RequestParam(value="reserve_date", defaultValue="") String reserve_date
            , HttpSession session
            ) {
        logger.info("login:POST");
        Map<String, Object> map = new HashMap<String, Object>();
        
        ModelUser result = srv.login(userid, userpassword) ;
        
        if(result != null){
            session.setAttribute(WebConstants.SESSION_NAME, result);
            session.getAttribute(userid);
            
            map.put("code"  , 1);
            map.put("userid", userid);
            
            /* 예약화면 전에 로그인을 깜박하고 안했을경우 로그인 화면으로 간 후
             로그인 하면 예약화면 가게끔 (유저 편리성)
             */
            if(programno != null ){
                map.put("code"  , 1);
                map.put("programno", programno);
                map.put("reserve_date", reserve_date);
            }
            return map;
            
        }else{
            map.put("code"  , 2);
            return map;
        }
    }
    
    
    @RequestMapping(value = "/user_logout", method = RequestMethod.GET)
    public String logout(Model model
            , HttpSession session
            ) {
        logger.info("logout");
        
        session.removeAttribute(WebConstants.SESSION_NAME);
        
        return "redirect:/";
    }
    
    
    @RequestMapping(value = "/user_join", method = RequestMethod.GET)
    public String join(Locale locale, Model model) {
        logger.info("join:GET");
        
        return "user/user_join";
    }

    @RequestMapping(value = "/user_join", method = RequestMethod.POST)
    public String join( Model model 
            , @ModelAttribute ModelUser userinfo
            ) {
         logger.info("join:POST");
        
        int result = srv.insertUser(userinfo); 
        
        if(result == 1) {
            return "user/user_join_success";
        } else {
            model.addAttribute("userinfo", userinfo );
            return "redirect:/user/user_join";
        }
    }
    
    // 아이디 체크하는 부분 (user_login의 ajax로 통신)
    @RequestMapping(value = "/user_id_check", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> user_id_check( Model model 
            , @RequestParam(value="userid", defaultValue="") String userid
            ) {
        logger.info("user_id_check");
        
        ModelUser user = srv.getUserOne(userid);
                
        Map<String, Object> map = new HashMap<String, Object>();
        
        if(user != null) {
            map.put("code", 1);
            map.put("msg", "이미 존재하는 아이디 입니다.");
            
            return map;
        } else {
            map.put("code", 2);
            return map;
        }
    }
    
    
    // 가입 성공!
    @RequestMapping(value = "/user_join_success", method = RequestMethod.GET)
    public String user_join_success( Model model
            , HttpSession session
            ) {
        logger.info("user_join_success");
        
        return "user/user_join_success";
    }
    
    
    // 유저 정보 보기
    @RequestMapping(value = "/user_info", method = RequestMethod.GET)
    public String user_info( Model model 
            , HttpSession session
            ){
        logger.info("user_info");

        ModelUser user = (ModelUser) session.getAttribute(WebConstants.SESSION_NAME);
        if(user != null){

            return "user/user_info";
        } else{
            return "redirect:/";
        }
    }
    
    // 유저 정보 수정 
    @RequestMapping(value = "/user_modify", method = RequestMethod.GET)
    public String user_modify_GET( Model model 
            , HttpSession session
            ) {
        logger.info("user_modify");
        
        ModelUser user = (ModelUser) session.getAttribute(WebConstants.SESSION_NAME);
        if(user != null){
            ModelUser modify = (ModelUser) session.getAttribute(WebConstants.SESSION_NAME);
            model.addAttribute("modify", modify);

            return "user/user_modify";
        }else{
            return "redirect:/";
        }
    }
    
    // 유저 정보 수정 POST
    @RequestMapping(value = "/user_modify", method = RequestMethod.POST)
    public String user_modify_POST( Model model
            , @RequestParam(value="userid", defaultValue="") String userid
            , @ModelAttribute ModelUser updateValue
            , HttpSession session
            ) {
        logger.info("user_modify:POST");
        
        ModelUser user = (ModelUser) session.getAttribute(WebConstants.SESSION_NAME);
        if(user != null){
            ModelUser searchValue = srv.getUserOne(userid);
            int result = srv.updateUser(updateValue, searchValue);
            
            if (result == 1) {
                session.setAttribute(WebConstants.SESSION_NAME, srv.getUserOne(user.getUserid()));
                return "user/user_info";
            }else{
                return "redirect:/user/user_info";
            }
        }else{
            return "redirect:/user/user_login";
        }
    }
    
    // 비밀번호 수정
    @RequestMapping(value = "/user_modify_password", method = RequestMethod.GET)
    public String user_modify_password_GET( Model model 
            , HttpSession session
            ) {
        logger.info("user_modify_password:GET");

        ModelUser user = (ModelUser) session.getAttribute(WebConstants.SESSION_NAME);
        if(user != null){
            return "user/user_modify_password";
        }else{
            return "redirect:/user/user_login";
        }
    }
    
    // 비밀번호 수정 POST
    @RequestMapping(value = "/user_modify_password", method = RequestMethod.POST)
    public String user_modify_password_POST( Model model
            , @RequestParam(value="currentpassword", defaultValue="") String currentpassword
            , @RequestParam(value="newpassword", defaultValue="") String newpassword
            , HttpSession session
            ) {
        logger.info("user_modify_password:POST");
        ModelUser user = (ModelUser) session.getAttribute(WebConstants.SESSION_NAME);
        if(user != null){
            int result = srv.updatePassword(newpassword, currentpassword, user.getUserid());
            
            if(result == 1){
                session.removeAttribute(WebConstants.SESSION_NAME);
                // 세션종료시키고 변경성공 화면으로 가자
                return "user/user_modify_password_success";                
            }else{
                // 로그인 실패 메시지 보내고 비밀번호변경 페이지로 가자
                return "redirect:/user_modify_password";
            }
        }else{
            return "redirect:/user/user_login";
        }
    }
    
    // 유저비밀번호 변경 성공
    @RequestMapping(value = "/user_modify_password_success", method = RequestMethod.GET)
    public String user_modify_password_success( Model model
            , HttpSession session
            ) {
        logger.info("user_modify_password_success");
        
        return "user/user_modify_password_success";
    }
    
    
    // 회원 탈퇴
    @RequestMapping(value = "/user_delete", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> user_delete( Model model
            , HttpSession session) {

        logger.info("user_delete");
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        ModelUser user = (ModelUser) session.getAttribute(WebConstants.SESSION_NAME);
        if (user != null) {
            int result = srv.deleteUser(user);
            
            if (result >= 1) {
                // 세션종료시키고 삭제 성공 화면으로
                session.removeAttribute(WebConstants.SESSION_NAME);
                map.put("code", 1);
                map.put("url", "/user/user_delete_success");
                return map;
            } else {
                map.put("code", 2);
                return map;
            }
        } else {
            map.put("code", 2);
            return map;
        }
    }

    
    // 회원탈퇴 변경 성공
    @RequestMapping(value = "/user_delete_success", method = RequestMethod.GET)
    public String user_delete_success( Model model
            , HttpSession session
            ) {
        logger.info("user_delete_success");
        
        return "user/user_delete_success";
    }
    

    // 비밀번호 찾기/재설정 :get
    @RequestMapping(value = "/user_find_password", method = RequestMethod.GET)
    public String user_find_password_get( Model model
            , HttpSession session
            ) {
        logger.info("user_find_password_get");
        
        return "user/user_find_password";
    }
    // 비밀번호 찾기/재설정 :get
    @RequestMapping(value = "/user_find_password", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> user_find_password_post( Model model
            , @ModelAttribute ModelUser user
            , HttpSession session
            ) {
        logger.info("user_find_password_post");
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        ModelUser user1 = new ModelUser(); 
        user1 = srv.getUserOne(user.getUserid());
        
        String hint = user.getPassword_hint();
        String hint_confirm = user.getPassword_hint_confirm();
        
        // 기존 DB의 비밀번호 힌트와 사용자가 입력한 비밀번호 힌트가 맞는지 확인한다. 
        if( hint.equals(user1.getPassword_hint()) && hint_confirm.equals(user1.getPassword_hint_confirm())){
            map.put("code", 1);
            return map;
        } else {
            map.put("code", 2);
            return map;
        }
    }
    
    // 비밀번호 재설정 POST
    @RequestMapping(value = "/user_new_password", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object>  user_new_password( Model model
            , @RequestParam(value="userid", defaultValue="") String userid
            , @RequestParam(value="newpassword", defaultValue="") String newpassword
            , HttpSession session
            ) {
        logger.info("user_new_password");
        Map<String, Object> map = new HashMap<String, Object>();
        ModelUser user = srv.getUserOne(userid);
        
        // jsp에서 받아온 userid, newpassword를 통해 비빌번호를 변경한다. 
        int result = srv.updatePassword(newpassword, user.getUserpassword(), userid);
            
        if(result == 1){
            map.put("code", 1);
            return map;                
        }else{
            map.put("code", 2);
            return map;
        }
    }
    
    
    
    
    @RequestMapping(value = "/user_confirm_reservation_list", method = RequestMethod.GET)
    public String user_confirm_reservation_list( Model model
            , HttpSession session
            ) {
        logger.info("user_confirm_reservation_list");
        
        ModelUser user = (ModelUser) session.getAttribute(WebConstants.SESSION_NAME);
        List<ModelReservation> list = srvreservation.getReservationList(user.getUserid());
        
        model.addAttribute("list", list);
        
        return "user/user_confirm_reservation_list";
    }
    
    @RequestMapping(value = "/user_confirm_reservation_one", method = RequestMethod.GET)
    public String user_confirm_reservation_one( Model model
            , @ModelAttribute ModelReservation reservation
            , HttpSession session
            ) {
        logger.info("user_confirm_reservation_one");
        
        ModelReservation reservation1 = srvreservation.getReservation(reservation);
        
        model.addAttribute("reservation1", reservation1);
        
        // templecd를 통해 temple의 주소와 전화번호를 가져옴
        ModelTemple temple = new ModelTemple(); 
        temple.setTemplecd(reservation1.getTemplecd());
        ModelTemple temple1 = srvtemple.getTempleOne(temple); 
        model.addAttribute("temple1", temple1);
        
        return "user/user_confirm_reservation_one";
    }
}

