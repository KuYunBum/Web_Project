package com.spring.service;

import java.util.List;

import com.spring.dto.BoardDTO;

public interface BoardService {
	
	public void insert(BoardDTO dto) throws Exception;
	
	public BoardDTO detail(Integer bno) throws Exception;
	
	public void update(BoardDTO dto) throws Exception;
	
	public void delete(Integer bno) throws Exception;
	
	public List<BoardDTO> select() throws Exception;
	
	public void viewcnt(Integer bno) throws Exception;

}