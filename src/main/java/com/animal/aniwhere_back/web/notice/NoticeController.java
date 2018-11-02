package com.animal.aniwhere_back.web.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.animal.aniwhere_back.service.NoticeDTO;
import com.animal.aniwhere_back.service.impl.NoticeServiceImpl;

@Controller
public class NoticeController {
	
	@Resource(name="noticeService")
	private NoticeServiceImpl noticeService;
	
	@RequestMapping("/notice.aw")
	public String notice(Model model) throws Exception {
		Map map = new HashMap();
		map.put("start", 1);
		map.put("end", noticeService.getTotalRecord(map));
		List<NoticeDTO> list = noticeService.selectList(map);
		model.addAttribute("notice_list", list);
		return "notice/notice.tiles";
	}
}
