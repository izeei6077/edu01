package edu.seedit.blackList.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.seedit.common.service.UserService;
import edu.seedit.persistence.BlackListDAO;
import edu.seedit.vo.BlackListVO;

@Service("blackListService")
public class BlackListServiceImpl implements BlackListService {

	Logger logger = Logger.getLogger(this.getClass());
	public static final int PAGE_SIZE = 5;
	
	@Autowired UserService userService;

	@Resource(name="blackListDAO")
	private BlackListDAO blackListDAO;

	@Override
	public List<BlackListVO> selectBlacklistList(BlackListVO vo) {
		return blackListDAO.selectBlacklistList(vo);
	}

	@Override
	public int blacklistListCount(BlackListVO vo) {
		return blackListDAO.blacklistListCount(vo);
	}


}
