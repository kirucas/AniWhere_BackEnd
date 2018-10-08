package com.animal.aniwhere_back.web.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("/memberInfo.aw")
	public String member_info() throws Exception {
		return "member/member.tiles";
	}
}
