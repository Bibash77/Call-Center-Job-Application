package com.customercrud.callCenter.services.user;

import com.customercrud.callCenter.core.UserType;
import com.customercrud.callCenter.entity.User;

import java.util.List;

public interface UserService {
    List<User> getAllUser();
    User findById(Integer id);
    void addUser(User User);
    void updateUser(User User);
    void deleteUser(Integer id);
    User findByUserName(String userName);
    List<User> findUserByUserType(UserType userType);
}