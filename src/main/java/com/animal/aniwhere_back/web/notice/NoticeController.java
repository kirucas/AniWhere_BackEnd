package com.animal.aniwhere_back.web.notice;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.animal.aniwhere_back.service.NoticeDTO;
import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.impl.NoticeServiceImpl;

@Controller
public class NoticeController {

	@Resource(name = "noticeService")
	private NoticeServiceImpl service;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/notice.aw")
	public String notice(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			Model model) throws Exception {

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		map.put("start", start);
		map.put("end", end);
		
		List<NoticeDTO> list = service.selectList(map);
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, "notice.aw?");
		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);

		return "notice/notice.tiles";

	}////////// notice
	
	@ResponseBody
	@RequestMapping(value="/notice_one.awa", produces="text/plain; charset=UTF-8")
	public String notice_one(@RequestParam Map map) throws Exception {
		
		NoticeDTO dto = service.selectOne(map);
		
		JSONObject json = new JSONObject();
		
		json.put("no", dto.getNo());
		json.put("am_no", dto.getAm_no());
		json.put("title", dto.getTitle());
		json.put("content", dto.getContent());
		json.put("regidate", dto.getRegidate().toString());
		json.put("count", dto.getCount());
		json.put("am_id", dto.getAm_id());
		
		return json.toJSONString();
	}////////// notice_one

}//////////////////// NoticeController class
