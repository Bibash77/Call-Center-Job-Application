package com.customercrud.callCenter.repository;

import com.customercrud.callCenter.core.UserType;
import com.customercrud.callCenter.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
User findByUserName(String userName);
List<User> findAllByUserType(UserType userType);
}
