package com.spring.service;


import java.util.List;

import com.spring.dto.UserDTO;

public interface UserService {

	public void userJoin(UserDTO dto) throws Exception;
	
	public UserDTO userLogin(UserDTO dto) throws Exception;
	
	public UserDTO idCheck(String userID) throws Exception;
	
	public List<UserDTO> memberList() throws Exception;
}
