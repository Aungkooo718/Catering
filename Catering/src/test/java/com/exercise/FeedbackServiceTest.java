package com.exercise;

import com.exercise.model.Feedback;
import com.exercise.repo.FeedbackRepository;
import com.exercise.service.FeedbackService;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import static org.mockito.Mockito.*;

public class FeedbackServiceTest {

	 @InjectMocks
    private FeedbackService feedbackService;

    @Mock
    private FeedbackRepository feedbackRepository;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
        feedbackService = new FeedbackService();
        feedbackService.setFeedbackRepo(feedbackRepository);
    }

    @Test
    public void testSaveFeedback() {
        // Create a sample feedback object
        Feedback feedback = new Feedback();
        feedback.setFeedback("Great service");
        feedback.setEmployeeId("123");
        feedback.setEmployeeName("John Doe");

        // Call the service method
        feedbackService.saveFeedback(feedback);

        // Verify that the repository's save method was called with the correct feedback object
        verify(feedbackRepository).save(feedback);
    }

    // Add more test methods for other service functionality

}

