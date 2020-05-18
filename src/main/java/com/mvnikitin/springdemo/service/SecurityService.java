package com.mvnikitin.springdemo.service;

import com.mvnikitin.springdemo.entity.Role;
import com.mvnikitin.springdemo.entity.User;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;
import java.util.Optional;

public interface SecurityService extends UserDetailsService {
    public Optional<User> findById(Long id);
    public User findByUsername(String username);
    User save(User user);
    void remove(Long id);
    public List<User> findAll();
    public List<Role> findAllRoles();
}
