package com.animal.aniwhere_back.web.administrator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdministratorController {

	@RequestMapping(value = { "/sign_in.aw", "/" }, method = RequestMethod.GET)
	public String sign_in() throws Exception {
		return "administrator/sign_in";
	}////////// sign_in

	@RequestMapping(value = "/admin/signInProcess.aw", method = RequestMethod.GET)
	public String signInProcess() throws Exception {
		return "home.tiles";
	}////////// signInProcess

}//////////////////// AdministratorController class
