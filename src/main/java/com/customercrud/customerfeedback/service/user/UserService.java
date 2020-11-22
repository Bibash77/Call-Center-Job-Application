package com.customercrud.customerfeedback.service.user;

import com.customercrud.customerfeedback.coreclass.UserType;
import com.customercrud.customerfeedback.entity.User;

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
