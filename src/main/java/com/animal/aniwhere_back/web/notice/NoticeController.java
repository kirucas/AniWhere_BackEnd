package com.animal.aniwhere_back.web.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	
	@RequestMapping("/notice.aw")
	public String dog_main() throws Exception {
		return "notice/notice.tiles";
	}
}
