package com.animal.aniwhere_back.web.animal;

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
public class RnaController {

	public static final String ANI_CATEGORY = "3";

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

	@RequestMapping("/rna/main.aw")
	public String rna_main(Model model) throws Exception {

		Map map = new HashMap();

		map.put("ani_category", ANI_CATEGORY);
		map.put("start", 1);
		map.put("end", pageSize);

		List<PhotoBoardDTO> list = pService.selectList(map);

		model.addAttribute("list", list);

		int totalRecordCount = pService.getTotalRecord(map);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, 1);

		model.addAttribute("pagingString", pagingString);

		return "board/animal/rnaMain.tiles";
	}////////// rna_main

	@ResponseBody
	@RequestMapping(value = "/rna/photo_list.awa", produces = "text/plain; charset=UTF-8")
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
	@RequestMapping(value = "/rna/movie_list.awa", produces = "text/plain; charset=UTF-8")
	public String movie_list(@RequestParam Map map) throws Exception {

		map.put("ani_category", ANI_CATEGORY);

		int nowPage = Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);

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

		int totalRecordCount = mService.getTotalRecord(map);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);

		JSONObject json = new JSONObject();

		json.put("records", collections);
		json.put("pagingString", pagingString);

		return json.toJSONString();

	}////////// movie_list

	@ResponseBody
	@RequestMapping(value = "/rna/tip_list.awa", produces = "text/plain; charset=UTF-8")
	public String tip_list(@RequestParam Map map) throws Exception {

		map.put("ani_category", ANI_CATEGORY);

		int nowPage = Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);

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

		int totalRecordCount = tService.getTotalRecord(map);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);

		JSONObject json = new JSONObject();

		json.put("records", collections);
		json.put("pagingString", pagingString);

		return json.toJSONString();

	}////////// tip_list

	@ResponseBody
	@RequestMapping(value = "/rna/quest_list.awa", produces = "text/plain; charset=UTF-8")
	public String quest_list(@RequestParam Map map) throws Exception {

		map.put("ani_category", ANI_CATEGORY);

		int nowPage = Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);

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
		
		int totalRecordCount = qService.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);
		
		JSONObject json = new JSONObject();
		
		json.put("records", collections);
		json.put("pagingString", pagingString);

		return json.toJSONString();

	}////////// quest_list

}//////////////////// RnaController class
