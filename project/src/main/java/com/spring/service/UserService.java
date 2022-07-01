package com.spring.service;


import com.spring.dto.UserDTO;

public interface UserService {

	public void userJoin(UserDTO dto) throws Exception;
	
	public UserDTO userLogin(UserDTO dto) throws Exception;
	
	public UserDTO idCheck(int userID) throws Exception;
}
