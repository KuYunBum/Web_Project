package com.spring.dao;

import com.spring.dto.UserDTO;

public interface UserDAO {

	public void userJoin(UserDTO dto) throws Exception;
	
	public UserDTO userLogin(UserDTO dto) throws Exception;
	
	public UserDTO idCheck(String userID) throws Exception;
}
