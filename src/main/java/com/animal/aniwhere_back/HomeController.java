package com.animal.aniwhere_back;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

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
	}
	
	@Resource(name="lostAniService")
	private LostAnimalServiceImpl lostService;
	
	@RequestMapping(value="/main.aw")
	public String main(Model model) {
		Map map = new HashMap();
		//종료일 임박한 동물 10마리중 랜덤하게
		int end = (int) (Math.random() * 10) + 1;
		map.put("start", end);
		map.put("end", end);
		List<LostAnimalDTO> list = lostService.selectList(map);
		model.addAttribute("lost_one", list);
		return "home.tiles";
	}
	
}
