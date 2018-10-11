package com.animal.aniwhere_back.web.administrator;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdministratorController {

	@RequestMapping(value = "/sign_in.aw", method = RequestMethod.GET)
	public String sign_in() throws Exception {
		return "administrator/sign_in";
	}////////// sign_in

	@RequestMapping(value = "/admin/signInProcess.aw", method = RequestMethod.POST)
	public String signInProcess(@RequestParam Map map) throws Exception {
		System.out.println(String.format("signInProcess - id : %s | pw : %s", map.get("am_id"), map.get("am_pw")));
		return "home.tiles";
	}////////// signInProcess

}//////////////////// AdministratorController class
