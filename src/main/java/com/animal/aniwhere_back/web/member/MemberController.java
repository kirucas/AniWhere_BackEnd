package com.animal.aniwhere_back.web.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.animal.aniwhere_back.service.impl.member.AnimalServiceImpl;
import com.animal.aniwhere_back.service.impl.member.MemberServiceImpl;
import com.animal.aniwhere_back.service.member.AnimalDTO;
import com.animal.aniwhere_back.service.member.MemberDTO;

@Controller
public class MemberController {
	
	@Resource(name="memberService")
	private MemberServiceImpl memberService;
	
	@Resource(name="animalService")
	private AnimalServiceImpl animalService;
	
	@RequestMapping("/memberInfo.aw")
	public String member_info(Model model) throws Exception {
		Map map = new HashMap();
		map.put("start", 1);
		map.put("end", memberService.getTotalRecord(map));
		List<MemberDTO> list = memberService.selectList(map);
		
		model.addAttribute("member_list", list);
		return "member/member.tiles";
	}
	
	@RequestMapping("/animalInfo.aw")
	public String animal_info(Model model) throws Exception {
		Map map = new HashMap();
		map.put("start", 1);
		map.put("end", animalService.getTotalRecord(map));
		List<AnimalDTO> list = animalService.selectList(map);
		model.addAttribute("animal_list", list);
		return "member/animal.tiles";
	}
	
	public String ani_favor(String num) {
		StringBuffer buffer = new StringBuffer();;
		if(num.equals("0")) 
			buffer.append("없음");
		if(num.contains("1")) 
			buffer.append("강아지 ");
		if(num.contains("2"))
			buffer.append("고양이 ");
		if(num.contains("3"))
			buffer.append("파충류 ");
		if(num.contains("4"))
			buffer.append("양서류 ");
		if(num.contains("5"))
			buffer.append("조류 ");
		if(num.contains("6"))
			buffer.append("기타포유류 ");
		
		return buffer.toString();
	}
	
}
