package com.animal.aniwhere_back.web.animal.bird;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.animal.MovieBoardDTO;
import com.animal.aniwhere_back.service.animal.PhotoBoardDTO;
import com.animal.aniwhere_back.service.animal.QuestBoardDTO;
import com.animal.aniwhere_back.service.animal.TipBoardDTO;
import com.animal.aniwhere_back.service.impl.animal.MovieBoardServiceImpl;
import com.animal.aniwhere_back.service.impl.animal.PhotoBoardServiceImpl;
import com.animal.aniwhere_back.service.impl.animal.QuestBoardServiceImpl;
import com.animal.aniwhere_back.service.impl.animal.TipBoardServiceImpl;

@Controller
public class BirdController {

	public static final String ANI_CATEGORY = "4";

	@Resource(name = "photoService")
	private PhotoBoardServiceImpl pService;

	@Resource(name = "movieService")
	private MovieBoardServiceImpl mService;

	@Resource(name = "tipService")
	private TipBoardServiceImpl tService;

	@Resource(name = "questService")
	private QuestBoardServiceImpl qService;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/bird/main.aw")
	public String bird_main(Model model) throws Exception {

		Map map = new HashMap();

		map.put("ani_category", ANI_CATEGORY);
		map.put("start", 1);
		map.put("end", pageSize);

		List<PhotoBoardDTO> list = pService.selectList(map);

		model.addAttribute("list", list);

		int totalRecordCount = pService.getTotalRecord(map);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, 1);

		model.addAttribute("pagingString", pagingString);

		return "board/animal/birdMain.tiles";
	}////////// bird_main

	@ResponseBody
	@RequestMapping(value = "/bird/photo_list.awa", produces = "text/plain; charset=UTF-8")
	public String photo_list(@RequestParam Map map) throws Exception {

		map.put("ani_category", ANI_CATEGORY);

		int nowPage = Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);

		List<PhotoBoardDTO> list = pService.selectList(map);

		List<Map> collections = new Vector<>();

		for (PhotoBoardDTO dto : list) {
			Map record = new HashMap();
			record.put("no", dto.getNo());
			record.put("photo_title", dto.getPhoto_title());
			record.put("mem_nickname", dto.getMem_nickname());
			record.put("photo_regidate", dto.getPhoto_regidate().toString());
			record.put("photo_count", dto.getPhoto_count());
			record.put("photo_hit", dto.getPhoto_hit());

			collections.add(record);
		}
		
		int totalRecordCount = pService.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);
		
		JSONObject json = new JSONObject();
		
		json.put("records", collections);
		json.put("pagingString", pagingString);

		return json.toJSONString();

	}////////// photo_list

	@ResponseBody
	@RequestMapping(value = "/bird/movie_list.awa", produces = "text/plain; charset=UTF-8")
	public String movie_list() throws Exception {

		System.out.println("movie list start");

		Map map = new HashMap();

		map.put("ani_category", ANI_CATEGORY);
		map.put("start", 1);
		map.put("end", mService.getTotalRecord(map));

		List<MovieBoardDTO> list = mService.selectList(map);

		List<Map> collections = new Vector<>();

		for (MovieBoardDTO dto : list) {
			Map record = new HashMap();
			record.put("no", dto.getNo());
			record.put("movie_title", dto.getMovie_title());
			record.put("mem_nickname", dto.getMem_nickname());
			record.put("movie_regidate", dto.getMovie_regidate().toString());
			record.put("movie_count", dto.getMovie_count());
			record.put("movie_hit", dto.getMovie_hit());

			collections.add(record);
		}
		System.out.println(collections);
		System.out.println(JSONArray.toJSONString(collections));
		System.out.println("movie list end");

		return JSONArray.toJSONString(collections);

	}////////// movie_list

	@ResponseBody
	@RequestMapping(value = "/bird/tip_list.awa", produces = "text/plain; charset=UTF-8")
	public String tip_list() throws Exception {

		System.out.println("tip list start");

		Map map = new HashMap();

		map.put("ani_category", ANI_CATEGORY);
		map.put("start", 1);
		map.put("end", tService.getTotalRecord(map));

		List<TipBoardDTO> list = tService.selectList(map);

		List<Map> collections = new Vector<>();

		for (TipBoardDTO dto : list) {
			Map record = new HashMap();

			record.put("no", dto.getNo());
			record.put("tip_title", dto.getTip_title());
			record.put("mem_nickname", dto.getMem_nickname());
			record.put("tip_regidate", dto.getTip_regidate().toString());
			record.put("tip_count", dto.getTip_count());
			record.put("tip_hit", dto.getTip_hit());

			collections.add(record);
		}

		System.out.println("tip list end");

		return JSONArray.toJSONString(collections);

	}////////// tip_list

	@ResponseBody
	@RequestMapping(value = "/bird/quest_list.awa", produces = "text/plain; charset=UTF-8")
	public String quest_list() throws Exception {

		System.out.println("quest list start");

		Map map = new HashMap();

		map.put("ani_category", ANI_CATEGORY);
		map.put("start", 1);
		map.put("end", qService.getTotalRecord(map));

		List<QuestBoardDTO> list = qService.selectList(map);

		List<Map> collections = new Vector<>();

		for (QuestBoardDTO dto : list) {
			Map record = new HashMap();

			record.put("no", dto.getNo());
			record.put("quest_title", dto.getQuest_title());
			record.put("mem_nickname", dto.getMem_nickname());
			record.put("quest_regidate", dto.getQuest_regidate().toString());
			record.put("quest_count", dto.getQuest_count());
			record.put("quest_hit", dto.getQuest_hit());
			record.put("quest_checking", dto.getChecking());

			collections.add(record);
		}

		System.out.println("quest list end");

		return JSONArray.toJSONString(collections);

	}////////// quest_list

}//////////////////// BirdController class
