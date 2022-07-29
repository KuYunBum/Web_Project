package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.MyPageDAO;
import com.spring.dto.InbodyDTO;
import com.spring.dto.UserRecordDTO;
import com.spring.vo.PageMaker;

@Service
public class MyPageServiceImpl implements MyPageService{
	
	
	@Autowired
	private SqlSession sqlSession;
	
	
	//인바디
	@Override
	public void inbodyInsert(InbodyDTO dto) throws Exception {
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		dao.inbodyInsert(dto);
	}

	@Override
	public InbodyDTO inbodyDetail(int userNum) throws Exception {
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		return dao.inbodyDetail(userNum);
	}

	@Override
	public void inbodyUpdate(InbodyDTO dto) throws Exception {
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		dao.inbodyUpdate(dto);
	}
	
	
	//운동기록
	@Override
	public void recordInsert(UserRecordDTO dto) throws Exception{
		
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		dao.recordInsert(dto);
	};

	@Override
	public void recordUpdate(UserRecordDTO dto) throws Exception{
		
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		dao.recordUpdate(dto);
	};

	@Override
	public void recordDelete(int userNum) throws Exception{
		
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		dao.recordDelete(userNum);
	}

	@Override
	public List<UserRecordDTO> recordList(int userNum) throws Exception {
		
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		List<UserRecordDTO> dtos = dao.recordList(userNum);
		return dtos;
	};

//	@Override
//	public List<UserRecordDTO> listCriteria(PageMaker pm) throws Exception {
//		MyPageDAO dao=sqlSession.getMapper(MyPageDAO.class);
//		return dao.listCriteria(pm);
//	}
//
//	@Override
//	public int listCount(PageMaker pm) throws Exception {
//		MyPageDAO dao=sqlSession.getMapper(MyPageDAO.class);
//		return dao.listCount(pm);
//	}



}
