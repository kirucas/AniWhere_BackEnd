package com.animal.aniwhere_back.web.notice;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	@RequestMapping(value = "/notice.aw")
	public String notice(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			Model model) throws Exception {

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);

		List<NoticeDTO> list = service.selectList(map);

		int totalRecordCount = service.getTotalRecord(map);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				"notice.aw?");

		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);

		return "notice/notice.tiles";
	}////////// notice

	// 등록 폼으로 이동 및 입력처리]
	@RequestMapping(value = "/notice/write.aw", method = RequestMethod.GET)
	public String write(@RequestParam Map map) throws Exception {
		return "notice/write.tiles";
	}////////// write _GET

	@RequestMapping(value = "/notice/write.aw", method = RequestMethod.POST)
	public String write(@RequestParam Map map, HttpSession session) throws Exception {

		map.put("am_no", session.getAttribute("am_no"));

		service.insert(map);

		return "forward:/notice.aw";

	}////////// write _POST

	// 수정 처리]
	@RequestMapping(value = "/notice/update.aw", method = RequestMethod.GET)
	public String edit(@RequestParam Map map, Model model) throws Exception {
		
		NoticeDTO dto = service.selectOne(map);
		
		model.addAttribute("dto", dto);
		
		return "notice/update.tiles";
	}////////////// edit()
	
	@RequestMapping(value = "/notice/update.aw", method = RequestMethod.POST)
	public String edit(@RequestParam Map map) throws Exception {
		
		service.update(map);
		
		return "forward:/notice.aw";
	}

	@ResponseBody
	@RequestMapping(value = "/notice_one.awa", produces = "text/plain; charset=UTF-8")
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

	@RequestMapping("/notice/delete.aw")
	public String notice_delete(@RequestParam Map map, Model model) throws Exception {

		int affected = service.delete(map);

		model.addAttribute("noticeDeleteResult", affected);

		return "forward:/notice.aw";

	}////////// notice_delete

}//////////////////// NoticeController class
