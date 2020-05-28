package com.coda.global.studentmanager.controller;

import com.coda.global.studentmanager.domain.User;
import com.coda.global.studentmanager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping(value = "/user/list")
    public ResponseEntity<List<User>> listUsersByRole(@RequestParam("role_id") Integer roleId) {
        return new ResponseEntity<>(userService.listUsersByRole(roleId), HttpStatus.OK);
    }

}
