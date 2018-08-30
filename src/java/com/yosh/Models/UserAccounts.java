package com.yosh.Models;

import com.yosh.Beans.User;

/**
 *
 * @author Andres Aguilar
 */
public class UserAccounts {
    
    public boolean logIn(User user) {
        return (user.getUserName().equals("admin") && user.getPassword().equals("aguilar"));
    }
    
}
