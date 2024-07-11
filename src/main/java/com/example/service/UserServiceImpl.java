package com.example.service;

import com.example.dao.UserMapper;
import com.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Transactional
    public User selectUser(int id){
        return userMapper.selectUser(id);
    }
    
    public int idDupCheck(String beCheckedId){
    	return userMapper.idDupCheck(beCheckedId);
    }
}
