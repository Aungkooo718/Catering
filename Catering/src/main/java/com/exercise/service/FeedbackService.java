package com.exercise.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.model.Feedback;
import com.exercise.repo.FeedbackRepository;

@Service
public class FeedbackService {
 @Autowired
 FeedbackRepository feedbackRepo;
 public void saveFeedback(Feedback feedback) {
	 feedbackRepo.save(feedback);
 }
public void setFeedbackRepo(FeedbackRepository feedbackRepository) {
	// TODO Auto-generated method stub
	this.feedbackRepo = feedbackRepository;
}
}
