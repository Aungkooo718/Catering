package com.exercise.repo;



import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.exercise.model.contact;

@Repository
public interface ContactRepository extends JpaRepository<contact, String> 
{
	@Query("SELECT t FROM contact t WHERE t.id = 1")
	contact findContact();
	
	@Modifying
	@Transactional
	@Query("Update contact t Set t.email=?1,t.phone=?2,t.address=?3 WHERE t.id = ?4")
	int UpdateContact(String email, String phone,String address, int id);
}