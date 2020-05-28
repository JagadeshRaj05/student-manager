package com.coda.global.studentmanager.service;

import com.coda.global.studentmanager.domain.User;
import com.coda.global.studentmanager.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public List<User> listUsersByRole(Integer roleId) {
        return userRepository.findAllByRoleId(roleId);
    }

}
