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

import com.animal.aniwhere_back.service.impl.StatisticsService;
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
	
	@Resource(name="statisticsService")
	private StatisticsService statisService;
	
	@RequestMapping(value="/main.aw")
	public String main(Model model) {
		
		Map map = new HashMap();
		//종료일 임박한 동물 10마리중 랜덤하게
		
		Date today = new Date(new java.util.Date().getTime());
		
		map.put("today", today);
		
		int end = lostService.getTotalRecord(map);
		
		map.put("start", 1);
		map.put("end", end);
		List<LostAnimalDTO> list = lostService.selectList(map);
		
		Random random = new Random();
		
		model.addAttribute("lost_data", list.get(random.nextInt(end)));
		model.addAttribute("today", today);
		
		/* 메인 페이지 통계를 구하기 시작 */
		
		model.addAttribute("todayVisitor", statisService.todayVisitCount(map));
		model.addAttribute("todayRecords", statisService.todayAllBoardCount(map));
		model.addAttribute("allMemberCount", statisService.allMemberCount());
		model.addAttribute("allVisitor", statisService.allVisitor());
		model.addAttribute("allLostAnimal", statisService.allLostAnimal());
		model.addAttribute("allBoardCount", statisService.allBoardCount());
		
		List<Map> countList = statisService.allVisitCount();
		model.addAttribute("allVisitCount", countList);
		
		/* 메인 페이지 통계를 구하기 끝 */
		
		return "home.tiles";
		
	}////////// main
	
}//////////////////// HomeController class
