package com.animal.aniwhere_back.web.market;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.impl.market.GroupBuyServiceImpl;
import com.animal.aniwhere_back.service.impl.market.GroupBuyingListServiceImpl;
import com.animal.aniwhere_back.service.market.GroupBuyDTO;

@Controller
public class GroupBuyController {

	@Resource(name = "groupBuyService")
	private GroupBuyServiceImpl service;

	@Resource(name = "gbListService")
	private GroupBuyingListServiceImpl serviceList;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/market/groupbuy.aw")
	public String groupbuy(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			Model model) throws Exception {

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);

		List<GroupBuyDTO> list = service.selectList(map);

		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, "groupbuy.aw?");
		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);

		return "market/groupbuy.tiles";
		
	}////////// groupbuy
	
	@ResponseBody
	@RequestMapping(value = "/market/group_delete.awa", produces="text/plain; charset=UTF-8")
	public String group_delete(@RequestParam Map map) throws Exception {
		
		int affected = service.delete(map);
		
		JSONObject json = new JSONObject();
		
		if(affected == 1)
			json.put("result", "success");
		else
			json.put("result", "fail");
		
		return json.toJSONString();
		
	}////////// group_delete

}//////////////////// GroupBuyController class
