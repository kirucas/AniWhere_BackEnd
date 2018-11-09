package com.animal.aniwhere_back.web.mating;

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

import com.animal.aniwhere_back.service.MatingDTO;
import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.impl.MatingServiceImpl;

@Controller
public class MatingController {

	@Resource(name = "matingService")
	private MatingServiceImpl service;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/mating.aw")
	public String mating(@RequestParam Map map, Model model) throws Exception {

		int nowPage = map.get("nowPage") != null ? Integer.parseInt(map.get("nowPage").toString()) : 1;

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);

		List<MatingDTO> list = service.selectList(map);

		int totalRecordCount = service.getTotalRecord(map);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				"/mating.aw?");

		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);

		return "mating/mating.tiles";
	}
	
	@ResponseBody
	@RequestMapping(value="/mating/selectOne.awa", produces="text/plain; charset=UTF-8")
	public String mating_one(@RequestParam Map map) throws Exception {
		
		MatingDTO dto = service.selectOne(map);
		
		JSONObject json = new JSONObject();
		
		json.put("ani_name", dto.getAni_name());
		json.put("ani_age", dto.getAni_age());
		json.put("ani_gender", dto.getAni_gender());
		json.put("animal_name", dto.getAnimal_name());
		json.put("ani_kind", dto.getAni_kind());
		json.put("ani_pic", dto.getAni_pic());
		
		return json.toJSONString();
		
	}

}
