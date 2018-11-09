package com.animal.aniwhere_back.web.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.impl.member.AnimalServiceImpl;
import com.animal.aniwhere_back.service.impl.member.MemberServiceImpl;
import com.animal.aniwhere_back.service.member.AnimalDTO;
import com.animal.aniwhere_back.service.member.MemberDTO;

@Controller
public class MemberController {

	@Resource(name = "memberService")
	private MemberServiceImpl memberService;

	@Resource(name = "animalService")
	private AnimalServiceImpl animalService;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/memberInfo.aw")
	public String member_info(@RequestParam Map map, Model model) throws Exception {

		int nowPage = map.get("nowPage") != null ? Integer.parseInt(map.get("nowPage").toString()) : 1;

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);

		List<MemberDTO> list = memberService.selectList(map);

		int totalRecordCount = memberService.getTotalRecord(map);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, "/memberInfo.aw?");

		model.addAttribute("member_list", list);
		model.addAttribute("pagingString", pagingString);

		return "member/member.tiles";
	}

	@RequestMapping("/animalInfo.aw")
	public String animal_info(@RequestParam Map map, Model model) throws Exception {

		int nowPage = map.get("nowPage") != null ? Integer.parseInt(map.get("nowPage").toString()) : 1;

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);
		
		List<AnimalDTO> list = animalService.selectList(map);
		
		int totalRecordCount = animalService.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, "/animalInfo.aw?");
		
		model.addAttribute("animal_list", list);
		
		return "member/animal.tiles";
	}

	public String ani_favor(String num) {
		StringBuffer buffer = new StringBuffer();
		if (num.equals("0"))
			buffer.append("없음");
		if (num.contains("1"))
			buffer.append("강아지 ");
		if (num.contains("2"))
			buffer.append("고양이 ");
		if (num.contains("3"))
			buffer.append("파충류 ");
		if (num.contains("4"))
			buffer.append("양서류 ");
		if (num.contains("5"))
			buffer.append("조류 ");
		if (num.contains("6"))
			buffer.append("기타포유류");

		return buffer.toString();
	}

}
