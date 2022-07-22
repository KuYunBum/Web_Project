package com.spring.service;

import com.spring.dto.InbodyDTO;

public interface ContentService {
	
	//인바디
	public void insert(InbodyDTO dto) throws Exception;
	
	public InbodyDTO detail(int userNum) throws Exception;
	
	public void update(InbodyDTO dto) throws Exception;
	

}
