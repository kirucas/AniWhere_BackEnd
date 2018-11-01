package com.animal.aniwhere_back;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.animal.aniwhere_back.service.impl.miss.LostAnimalServiceImpl;
import com.animal.aniwhere_back.service.miss.LostAnimalDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/*private static final Logger logger = LoggerFactory.getLogger(HomeController.class);*/
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		/*logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );*/
		
		if(session.getAttribute("am_id") != null)
			return "forward:/main.aw";
		
		return "forward:/sign_in.aw";
	}////////// home
	
	@Resource(name="lostAniService")
	private LostAnimalServiceImpl lostService;
	
	@RequestMapping(value="/main.aw")
	public String main(Model model) {
		
		Map map = new HashMap();
		//종료일 임박한 동물 10마리중 랜덤하게
		
		Date today = new Date(new java.util.Date().getTime());
		
		map.put("today", today);
		
		int end = lostService.getTotalRecord(map);
		System.out.println("end : " + end);
		
		map.put("start", 1);
		map.put("end", end);
		List<LostAnimalDTO> list = lostService.selectList(map);
		
		Random random = new Random();
		
		model.addAttribute("lost_data", list.get(random.nextInt(end)));
		model.addAttribute("today", today);
		return "home.tiles";
		
	}////////// main
	
}//////////////////// HomeController class
