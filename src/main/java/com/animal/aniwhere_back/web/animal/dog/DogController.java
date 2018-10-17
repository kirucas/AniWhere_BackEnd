package com.animal.aniwhere_back.web.animal.dog;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.animal.aniwhere_back.service.animal.PhotoBoardDTO;
import com.animal.aniwhere_back.service.impl.animal.PhotoBoardServiceImpl;

@Controller
public class DogController {

	public static final String CATEGORY = "dog_";

	@Resource(name = "photoService")
	private PhotoBoardServiceImpl service;

	@RequestMapping("/dog/main.aw")
	public String dog_main(Model model) throws Exception {

		Map map = new HashMap();

		map.put("table_name", CATEGORY + "photo");

		List<PhotoBoardDTO> list = service.selectList(map);

		model.addAttribute("list", list);
		
		System.out.println("/dog/main.aw");

		return "board/animal/dogMain.tiles";
	}

	@ResponseBody
	@RequestMapping(value = "/dog/photo_list.aw", produces = "text/plain; charset=UTF-8")
	public String photo_list() throws Exception {

		System.out.println("list start");

		Map map = new HashMap();

		map.put("table_name", CATEGORY + "photo");

		List<PhotoBoardDTO> list = service.selectList(map);

		List<Map> collections = new Vector<>();

		for (PhotoBoardDTO dto : list) {
			Map record = new HashMap();
			record.put("photo_no", dto.getPhoto_no());
			record.put("photo_title", dto.getPhoto_title());
			record.put("mem_nickname", dto.getMem_nickname());
			record.put("photo_regidate", dto.getPhoto_regidate().toString());
			record.put("photo_count", dto.getPhoto_count());
			record.put("photo_hit", dto.getPhoto_hit());

			collections.add(record);
		}

		System.out.println("list end");

		return JSONArray.toJSONString(collections);
	}
	
}
