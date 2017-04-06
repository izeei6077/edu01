package edu.seedit.blackList.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.seedit.blackList.service.BlackListService;
import edu.seedit.common.util.SeedController;
import edu.seedit.vo.BlackListVO;

@Controller
public class BlackListController extends SeedController  {
	Logger logger = Logger.getLogger(this.getClass());
	public static final String PAGE_SIZE = "5";
	
	@Resource(name="blackListService")
	private BlackListService blackListService;
	

	@RequestMapping("/blackList/blackList.do")
	public String selectDayChkList(@RequestParam HashMap<String, String> req, ModelMap model) {
		String listID = (req.get("listID") == null ? "" : req.get("listID")) ;
		/*String pageNo = (req.get("pageNo") == null ? "1" : req.get("pageNo")) ;*/
		
		BlackListVO vo = new BlackListVO();
		vo.setListID(listID);/*
		vo.setPageNo(Integer.parseInt(pageNo));
		vo.setPageSize(2000);*/
		
		List<BlackListVO> resultList = blackListService.selectBlacklistList(vo);
		int totalCnt = blackListService.blacklistListCount(vo);

		/*Paging paging = new Paging();
		paging.setPageNo(Integer.parseInt(pageNo));
		paging.setPageSize(2000);
		paging.setTotalCount(totalCnt);
*/
		model.addAttribute("listID", listID);
/*		model.addAttribute("paging", paging);*/
		model.addAttribute("resultList", resultList);
		
		return "/blackList/blackList";
	}
	

}
