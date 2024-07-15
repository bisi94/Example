package com.example.service;

import com.example.dao.UserMapper;
import com.example.model.User;
import com.example.model.UserVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User selectUser(int id){
        return userMapper.selectUser(id);
    }
    
    @Override
    public void joinUser(UserVO userVO){
    	userMapper.joinUser(userVO);
    }
    
    @Override
    public int idDupCheck(String beCheckedId){
    	return userMapper.idDupCheck(beCheckedId);
    }
    
    @Override
    public UserVO loginCheck(UserVO userVO) {
    	return userMapper.loginCheck(userVO);
    };
    
}
