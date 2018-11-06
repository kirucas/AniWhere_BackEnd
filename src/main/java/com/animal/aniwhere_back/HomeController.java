package com.animal.aniwhere_back;

import java.io.File;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.animal.aniwhere_back.service.QRCode_Generator;
import com.animal.aniwhere_back.service.ReservationDTO;
import com.animal.aniwhere_back.service.StoreLocationDTO;
import com.animal.aniwhere_back.service.impl.ReservationServiceImpl;
import com.animal.aniwhere_back.service.impl.StatisticsService;
import com.animal.aniwhere_back.service.impl.StoreLocationServiceImpl;
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
		
		model.addAttribute("registerAnimal", statisService.registerAnimal());
		model.addAttribute("todayRegisterAni", statisService.todayRegisterAni());
		model.addAttribute("averageAnimal", statisService.averageAnimal());
		model.addAttribute("registerStore", statisService.registerStore());
		model.addAttribute("registerLostAnimal", statisService.registerLostAnimal());
		model.addAttribute("todayRegisterLost", statisService.todayRegisterLost());
		model.addAttribute("applyMating", statisService.applyMating());
		model.addAttribute("matingSuccess", statisService.matingSuccess());
		
		return "home.tiles";
		
	}////////// main
	
	@Resource(name="reservationService")
	private ReservationServiceImpl reserService;
	@Resource(name="storeLocService")
	private StoreLocationServiceImpl storeService;
	
	@RequestMapping("qr_generator.aw")
	public String qr_Generator(HttpServletRequest req) throws Exception {
		
		File folder = new File(req.getServletContext().getRealPath("/Upload"));
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		String fileType = "png";
		
		JSONObject json = new JSONObject();
		
		Map map = new HashMap();
		map.put("rv_no", 7);
		
		ReservationDTO dto = reserService.selectOne(map);
		
		json.put("name", dto.getMem_name());
		json.put("store_name", dto.getBizesnm() + " " + dto.getBrchnm());
		json.put("apply_date", dto.getApply_date().toString());
		json.put("booking_date", dto.getBooking_date());
		
		map.put("bizesid", dto.getStore_no());
		
		StoreLocationDTO storeDTO = storeService.selectOne(map);
		
		json.put("location", storeDTO.getRdnmadr());
		
		if(QRCode_Generator.createQRCodeImage(json.toJSONString(), folder, fileType).equals("success")){
			System.out.println("성공");
		}
		else {
			System.out.println("실패");
		}
		
		return "administrator/sign_in";
	}//////////
	
}//////////////////// HomeController class
