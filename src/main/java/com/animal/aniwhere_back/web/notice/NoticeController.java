package com.animal.aniwhere_back.web.notice;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.aop.ThrowsAdvice;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.animal.aniwhere_back.service.NoticeDTO;
import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.impl.NoticeServiceImpl;

@Controller
public class NoticeController {
	
	@Resource(name="noticeService")
	private NoticeServiceImpl service;
	
	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@RequestMapping(value="/notice.aw")
	public String notice(Model model,
			HttpServletRequest req,//페이징용 메소드에 전달
			@RequestParam Map map,//검색용 파라미터받기
			@RequestParam(required=false,defaultValue="1") int nowPage//페이징용 nowPage
			)throws Exception{
		//서비스 호출]
		//페이징을 위한 로직 시작]
		//전체 레코드 수
		int totalRecordCount= service.getTotalRecord(map);
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		//페이징을 위한 로직 끝]
		List<NoticeDTO> list = service.selectList(map);
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,req.getContextPath()+ "/notice/List.aw?");
		//데이터 저장]
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("list", list);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		//뷰정보 반환]
		return "notice/notice.tiles";
	}
	//등록 폼으로 이동 및 입력처리]
		@RequestMapping(value="/notice/write.aw",method=RequestMethod.GET)
		public String write() throws Exception{
			return "notice/write.tiles";
		}////////////////
	//삭제 처리
		@RequestMapping("/animal/freeboard/delete.aw")
		public String delete(@RequestParam Map map,Model model) throws Exception{
			int successFail = service.delete(map);
			model.addAttribute("successFail", successFail);
			return "board/freeboard/Message";
		}//////////////delete()
	
}
