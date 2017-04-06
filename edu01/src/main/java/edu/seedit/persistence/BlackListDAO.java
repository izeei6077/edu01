package edu.seedit.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import edu.seedit.common.dao.AbstractDAO;
import edu.seedit.vo.BlackListVO;

@Repository("blackListDAO")
public class BlackListDAO extends AbstractDAO {

	public List<BlackListVO> selectBlacklistList(BlackListVO vo) {
		return (List<BlackListVO>) select("selectBlacklistList",vo);
	}
	public int blacklistListCount(BlackListVO vo) {
		return (Integer) select("blacklistListCount",vo);
	}
	
/*
	public MaDayChkVo selectDayChk(MaDayChkVo vo) {
		return (MaDayChkVo)selectOne("selectDayChk",vo);
	}

	public int addDayChk(MaDayChkVo vo) {
		return insert("addDayChk",vo);
	}

	public int updateDayChk(MaDayChkVo vo) {
		return update("updateDayChk",vo);
	}

	public int deleteDayChk(MaDayChkVo vo) {
		return delete("deleteDayChk",vo);
	}

	
	public int sendDayChk(PoDayChkVo vo) {
		return insert("sendDayChk",vo);
	}*/
	
	
	
	
	

}
