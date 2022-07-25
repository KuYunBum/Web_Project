package com.spring.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.ContentDAO;
import com.spring.dto.InbodyDTO;


@Service
public class ContentServiceImpl implements ContentService{
	
	@Autowired
	private SqlSession sqlSession;
	
	
	//인바디
	@Override
	public void insert(InbodyDTO dto) throws Exception {
		ContentDAO dao = sqlSession.getMapper(ContentDAO.class);
		dao.insert(dto);
	}

	@Override
	public InbodyDTO detail(int userNum) throws Exception {
		ContentDAO dao = sqlSession.getMapper(ContentDAO.class);
		return dao.detail(userNum);
	}

	@Override
	public void update(InbodyDTO dto) throws Exception {
		ContentDAO dao = sqlSession.getMapper(ContentDAO.class);
		dao.update(dto);
	}



}
