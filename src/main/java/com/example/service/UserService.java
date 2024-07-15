package com.example.service;

import com.example.model.User;
import com.example.model.UserVO;

public interface UserService {
    public User selectUser(int id);
    
    public void joinUser(UserVO userVO);
    
    public int idDupCheck(String beCheckedId);

    public UserVO loginCheck(UserVO userVO);
    
    
    
}
