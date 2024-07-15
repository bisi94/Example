package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.model.User;
import com.example.model.UserVO;

@Mapper
public interface UserMapper {
	
	public User selectUser(int id);
	
	public void joinUser(UserVO userVO);
	
	public int idDupCheck(String beCheckedId);
	
	public UserVO loginCheck(UserVO userVO);
	
}
