package com.exercise.repo;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.exercise.model.mailSetting;

public interface MailRepository extends JpaRepository<mailSetting,Integer>
{
	@Query("SELECT t FROM mailSetting t WHERE t.id = 1")
	mailSetting findMail();
	
	@Modifying
	@Transactional
	@Query("Update mailSetting t Set t.mail=?1,t.pass=?2 WHERE t.id = ?3")
	int UpdateMail(String email,String pass,int id);
}
