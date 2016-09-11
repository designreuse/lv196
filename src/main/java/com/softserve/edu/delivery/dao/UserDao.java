package com.softserve.edu.delivery.dao;

import com.softserve.edu.delivery.domain.User;

public interface UserDao extends BaseDao<User, String> {
    boolean exists(String email);
}
