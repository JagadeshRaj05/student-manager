package com.coda.global.studentmanager.repository;

import com.coda.global.studentmanager.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    List<User> findAllByRoleId(Integer roleId);

}
