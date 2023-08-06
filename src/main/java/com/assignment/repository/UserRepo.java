package com.assignment.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.assignment.model.*;

public interface UserRepo extends JpaRepository<User, Integer> {
	User findByUserNameAndPassword(String userName, String password);

}
