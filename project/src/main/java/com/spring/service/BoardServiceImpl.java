package com.spring.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.BoardDAO;
import com.spring.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService{
	
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public void insert(BoardDTO dto) throws Exception{
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		dao.insert(dto);
	};

	public BoardDTO detail(Integer bno) throws Exception{
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		
		return dao.detail(bno);
	};

	public void update(BoardDTO dto) throws Exception{
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		dao.update(dto);
	};

	public void delete(Integer bno) throws Exception{
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		dao.delete(bno);
	};

	public List<BoardDTO> select() throws Exception{
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		List<BoardDTO> dtos = dao.select();
		
		return dtos;
	};

	public void viewcnt(Integer bno) throws Exception{
		
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		dao.viewcnt(bno);
		
	};

}
