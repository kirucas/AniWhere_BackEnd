package com.animal.aniwhere_back.web.administrator;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.animal.aniwhere_back.service.impl.member.AdministratorServiceImpl;
import com.animal.aniwhere_back.service.member.AdministratorDTO;

@Controller
public class AdministratorController {

	@Resource(name = "adminService")
	private AdministratorServiceImpl service;

	@RequestMapping(value = "/sign_in.aw", method = RequestMethod.GET)
	public String sign_in() throws Exception {
		return "administrator/sign_in";
	}////////// sign_in

	@RequestMapping(value = "/admin/signInProcess.aw", method = RequestMethod.POST)
	public String signInProcess(@RequestParam Map map, Model model, HttpSession session) throws Exception {
		System.out.println(String.format("signInProcess - id는 : %s | pw는 : %s", map.get("am_id"), map.get("am_pw")));

		if (!service.isMember(map)) {
			model.addAttribute("signInFail", "ID or PW가 틀립니다");
			return "administrator/sign_in";
		}

		AdministratorDTO dto = service.selectOne(map);

		session.setAttribute("am_id", map.get("am_id"));
		session.setAttribute("am_level", dto.getAm_level());
		session.setAttribute("am_level_str", amLeveltoString(Integer.parseInt(dto.getAm_level())));
		session.setAttribute("am_profile", dto.getAm_profile_link());

		return "home.tiles";
	}////////// signInProcess

	@RequestMapping(value = "/admin/sign_out.aw")
	public String signOut(HttpSession session, Model model) throws Exception {

		session.invalidate();

		model.addAttribute("signOutSuccess", "성공적으로 로그아웃 했습니다 ㅂㅂ~");

		return "forward:/sign_in.aw";

	}////////// signOut

	public String amLeveltoString(int level) {

		String string_level = "";

		switch (level) {
		case 1:
			string_level = "General Administrator";
			break;
		case 2:
			string_level = "Animal Manager";
			break;
		case 3:
			string_level = "Market Manager";
			break;
		case 4:
			string_level = "Miss Manager";
			break;
		case 5:
			string_level = "Mating Manager";
			break;
		case 6:
			string_level = "Where Manager";
		}

		return string_level;

	}////////// amLeveltoString
	
	@RequestMapping("/adminInfo.aw")
	public String admin_info(Model model) throws Exception {
		
		List<AdministratorDTO> list = service.selectList(null);
		
		model.addAttribute("admin_list", list);
		
		return "administrator/admin.tiles";
	}////////// admin_info
	
}//////////////////// AdministratorController class
