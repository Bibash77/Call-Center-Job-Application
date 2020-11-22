package com.customercrud.callcenter.services.user;

import com.customercrud.callcenter.core.UserType;
import com.customercrud.callcenter.entity.User;

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
