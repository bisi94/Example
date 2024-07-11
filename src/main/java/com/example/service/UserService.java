package com.example.service;

import com.example.model.User;

public interface UserService {
    public User selectUser(int id);
    
    public int idDupCheck(String beCheckedId);
}
