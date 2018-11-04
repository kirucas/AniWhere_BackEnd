package com.animal.aniwhere_back.web.market;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.impl.market.BuySellServiceImpl;
import com.animal.aniwhere_back.service.market.BuySellDTO;

@Controller
public class BuyController {

	private static final String TABLE_NAME = "buy";

	@Resource(name = "buySellService")
	private BuySellServiceImpl service;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/market/buy.aw")
	public String buy(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			Model model) throws Exception {

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("table_name", TABLE_NAME);
		map.put("start", start);
		map.put("end", end);

		int totalRecordCount = service.getTotalRecord(map);

		List<BuySellDTO> list = service.selectList(map);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				"buy.aw?");

		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);

		return "market/buy.tiles";
	}////////// buy

}//////////////////// BuyController class
