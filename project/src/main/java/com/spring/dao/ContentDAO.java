package com.spring.dao;

import com.spring.dto.InbodyDTO;

public interface ContentDAO {
	
	public void insert(InbodyDTO dto) throws Exception;
	
	public InbodyDTO detail(int userNum) throws Exception;
	
	public void update(InbodyDTO dto) throws Exception;
	
}
