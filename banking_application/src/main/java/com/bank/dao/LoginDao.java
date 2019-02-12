package com.bank.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bank.model.User;

@Repository
public interface LoginDao extends CrudRepository<User,Integer>{

	
	@Query(value="SELECT * FROM user t where t.username = :username and t.password=:password and t.role=:role", nativeQuery=true) 
    
	User findOneByUsernameAndPasswordAndRole(@Param("username") String username, @Param("password")String password , @Param("role") String role);

	List<User> findByRole(String role);
	
	@Query(value="SELECT * FROM user t where t.username like :key% and role= :role", nativeQuery=true) 

	List<User> findByUsernameAndRole(@Param("key") String key,@Param("role") String role);

	

	
    
}
