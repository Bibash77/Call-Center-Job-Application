package com.customercrud.callcenter.services.user;

import com.customercrud.callcenter.core.UserType;
import com.customercrud.callcenter.entity.User;
import com.customercrud.callcenter.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getAllUser() {
        return userRepository.findAll();
    }

    @Override
    public User findById(Integer id) {
        return userRepository.findById(id).get();
    }

    @Override
    public void addUser(User User) {
        userRepository.save(User);
    }

    @Override
    public void updateUser(User User) {
        userRepository.save(User);
    }

    @Override
    public void deleteUser(Integer id) {

    }

    @Override
    public User findByUserName(String userName) {
        return userRepository.findByUserName(userName);
    }

    @Override
    public List<User> findUserByUserType(UserType userType) {
        return userRepository.findAllByUserType(userType);
    }
}
