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

import com.animal.aniwhere_back.service.animal.MovieBoardDTO;
import com.animal.aniwhere_back.service.animal.PhotoBoardDTO;
import com.animal.aniwhere_back.service.animal.QuestBoardDTO;
import com.animal.aniwhere_back.service.animal.TipBoardDTO;
import com.animal.aniwhere_back.service.impl.animal.MovieBoardServiceImpl;
import com.animal.aniwhere_back.service.impl.animal.PhotoBoardServiceImpl;
import com.animal.aniwhere_back.service.impl.animal.QuestBoardServiceImpl;
import com.animal.aniwhere_back.service.impl.animal.TipBoardServiceImpl;

@Controller
public class DogController {

	public static final String ANI_CATEGORY = "1";

	@Resource(name = "photoService")
	private PhotoBoardServiceImpl pService;

	@Resource(name = "movieService")
	private MovieBoardServiceImpl mService;

	@Resource(name = "tipService")
	private TipBoardServiceImpl tService;

	@Resource(name = "questService")
	private QuestBoardServiceImpl qService;

	@RequestMapping("/dog/main.aw")
	public String dog_main(Model model) throws Exception {

		Map map = new HashMap();

		map.put("ani_category", ANI_CATEGORY);
		map.put("start", 1);
		map.put("end", pService.getTotalRecord(map));

		List<PhotoBoardDTO> list = pService.selectList(map);

		model.addAttribute("list", list);

		return "board/animal/dogMain.tiles";
	}////////// dog_main

	@ResponseBody
	@RequestMapping(value = "/dog/photo_list.awa", produces = "text/plain; charset=UTF-8")
	public String photo_list() throws Exception {

		Map map = new HashMap();

		map.put("ani_category", ANI_CATEGORY);
		map.put("start", 1);
		map.put("end", pService.getTotalRecord(map));

		List<PhotoBoardDTO> list = pService.selectList(map);

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

		return JSONArray.toJSONString(collections);

	}////////// photo_list

	@ResponseBody
	@RequestMapping(value = "/dog/movie_list.awa", produces = "text/plain; charset=UTF-8")
	public String movie_list() throws Exception {

		Map map = new HashMap();

		map.put("ani_category", ANI_CATEGORY);
		map.put("start", 1);
		map.put("end", mService.getTotalRecord(map));

		List<MovieBoardDTO> list = mService.selectList(map);

		List<Map> collections = new Vector<>();

		for (MovieBoardDTO dto : list) {
			Map record = new HashMap();
			record.put("movie_no", dto.getMovie_no());
			record.put("movie_title", dto.getMovie_title());
			record.put("mem_nickname", dto.getMem_nickname());
			record.put("movie_regidate", dto.getMovie_regidate().toString());
			record.put("movie_count", dto.getMovie_count());
			record.put("movie_hit", dto.getMovie_hit());

			collections.add(record);
		}

		return JSONArray.toJSONString(collections);

	}////////// movie_list

	@ResponseBody
	@RequestMapping(value = "/dog/tip_list.awa", produces = "text/plain; charset=UTF-8")
	public String tip_list() throws Exception {

		Map map = new HashMap();

		map.put("ani_category", ANI_CATEGORY);
		map.put("start", 1);
		map.put("end", tService.getTotalRecord(map));

		List<TipBoardDTO> list = tService.selectList(map);

		List<Map> collections = new Vector<>();

		for (TipBoardDTO dto : list) {
			Map record = new HashMap();

			record.put("tip_no", dto.getTip_no());
			record.put("tip_title", dto.getTip_title());
			record.put("mem_nickname", dto.getMem_nickname());
			record.put("tip_regidate", dto.getTip_regidate().toString());
			record.put("tip_count", dto.getTip_count());
			record.put("tip_hit", dto.getTip_hit());

			collections.add(record);
		}

		return JSONArray.toJSONString(collections);

	}////////// tip_list

	@ResponseBody
	@RequestMapping(value = "/dog/quest_list.awa", produces = "text/plain; charset=UTF-8")
	public String quest_list() throws Exception {
		
		Map map = new HashMap();
		
		map.put("ani_category", ANI_CATEGORY);
		map.put("start", 1);
		map.put("end", qService.getTotalRecord(map));
		
		List<QuestBoardDTO> list = qService.selectList(map);
		
		List<Map> collections = new Vector<>();
		
		for(QuestBoardDTO dto : list) {
			Map record = new HashMap();
			
			record.put("quest_no", dto.getQuest_no());
			record.put("quest_title", dto.getQuest_title());
			record.put("mem_nickname", dto.getMem_nickname());
			record.put("quest_regidate", dto.getQuest_regidate().toString());
			record.put("quest_count", dto.getQuest_count());
			record.put("quest_hit", dto.getQuest_hit());
			record.put("quest_checking", dto.getChecking());
			
			collections.add(record);
		}
		
		return JSONArray.toJSONString(collections);
		
	}////////// quest_list

}//////////////////// DogController class
