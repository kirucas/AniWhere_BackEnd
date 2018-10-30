package com.animal.aniwhere_back.web.market;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.animal.aniwhere_back.service.impl.market.GroupBuyServiceImpl;
import com.animal.aniwhere_back.service.impl.market.GroupBuyingListServiceImpl;
import com.animal.aniwhere_back.service.market.GroupBuyDTO;

@Controller
public class GroupBuyController {

	@Resource(name = "groupBuyService")
	private GroupBuyServiceImpl serviceGB;

	@Resource(name = "gbListService")
	private GroupBuyingListServiceImpl serviceGBList;

	@RequestMapping("/market/groupbuy.aw")
	public String groupbuy(Model model) throws Exception {
		
		Map map = new HashMap();
		
		map.put("start", 1);
		map.put("end", serviceGB.getTotalRecord(map));
		
		List<GroupBuyDTO> list = new Vector<>();
		
		list = serviceGB.selectList(map);
		
		model.addAttribute("list", list);
		
		return "market/groupbuy.tiles";
	}////////// groupbuy
	
}//////////////////// GroupBuyController class
