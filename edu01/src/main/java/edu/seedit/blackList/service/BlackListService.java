package edu.seedit.blackList.service;

import java.util.List;
import java.util.Map;

import edu.seedit.sample.vo.SampleVO;
import edu.seedit.vo.BlackListVO;

public interface BlackListService {

	public List<BlackListVO> selectBlacklistList(BlackListVO vo);
	public int blacklistListCount(BlackListVO vo);

	
	
	
	/*	public MaDayChkVo selectDayChk(MaDayChkVo vo); 
	public int addDayChk(MaDayChkVo vo);
	public int updateDayChk(MaDayChkVo vo);
	public int deleteDayChk(MaDayChkVo vo);	
	public int sendDayChk(PoDayChkVo vo);
*/
}
