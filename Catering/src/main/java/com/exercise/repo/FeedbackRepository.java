package com.exercise.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.exercise.model.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback,Integer>{
	
}
