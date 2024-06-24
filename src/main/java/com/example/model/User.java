package com.example.model;

import org.apache.ibatis.type.Alias;

@Alias("user")
public class User {
    private int id;
    private String name;
    private String email;
    private String userName;
    private String userCode;

    // Getters and setters
    
    public int getId() {
        return id;
    }

    public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
