package com.animal.aniwhere_back.web.market;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.animal.aniwhere_back.service.impl.market.BuySellServiceImpl;
import com.animal.aniwhere_back.service.market.BuySellDTO;

@Controller
public class SellController {

	private static final String TABLE_NAME = "sell";
	
	@Resource(name = "buySellService")
	private BuySellServiceImpl serviceBS;

	@RequestMapping("/market/sell.aw")
	public String sell(Model model) throws Exception {
		
		Map map = new HashMap();
		
		map.put("table_name", TABLE_NAME);
		map.put("start", 1);
		map.put("end", serviceBS.getTotalRecord(map));
		
		List<BuySellDTO> list = new Vector();
		
		list = serviceBS.selectList(map);
		
		model.addAttribute("list", list);
		
		return "market/sell.tiles";
	}//////////
	
}//////////////////// SellController class
