package com.spring.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.UserDAO;
import com.spring.dto.UserDTO;


@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void userJoin(UserDTO dto) throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		dao.userJoin(dto);
	}

	@Override
	public UserDTO userLogin(UserDTO dto) throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		return dao.userLogin(dto);
	}
	
	@Override
	public UserDTO idCheck(String userID) throws Exception {
		UserDAO dao = sqlSession.getMapper(UserDAO.class);
		
		return dao.idCheck(userID);
	}

}
