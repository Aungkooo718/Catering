package com.exercise;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;

import com.exercise.repo.MailRepository;
import com.exercise.service.MailService;



@SpringBootTest
public class MailServiceTest {

    @Mock
    private MailRepository mailRepository;

    @InjectMocks
    private MailService mailService;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testUpdateTime() {
        // Mock the behavior of the mailRepository.UpdateMail() method
        when(mailRepository.UpdateMail(any(String.class), any(String.class), any(Integer.class))).thenReturn(1);

        // Call the updateTime() method of the MailService
        int result = mailService.updateTime("test@example.com", "password", 1);

        // Verify the result
        assertEquals(1, result);
        verify(mailRepository).UpdateMail("test@example.com", "password", 1);
    }
}
