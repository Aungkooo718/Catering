package com.exercise;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.flash;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.Employee;
import com.exercise.model.Feedback;
import com.exercise.repo.FeedbackRepository;
import com.exercise.service.FeedbackService;

@SpringBootTest
@AutoConfigureMockMvc
public class FeedbackControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private FeedbackService feedbackService;

    @MockBean
    private EmployeeRepository employeeRepository;

    @MockBean
    private FeedbackRepository feedbackRepository;

    @Test
    public void testAddFeedback() throws Exception {
        Principal principal = Mockito.mock(Principal.class);
        RedirectAttributes ra = Mockito.mock(RedirectAttributes.class);
        Employee employee = new Employee();
        employee.setName("John");
        employee.setStaffId("123");
        when(principal.getName()).thenReturn("john@example.com");
        when(employeeRepository.findByEmail("john@example.com")).thenReturn(employee);

        MockHttpServletRequestBuilder request = MockMvcRequestBuilders.post("/addFeedback")
                .param("feedback", "Test Feedback")
                .param("dashboard", "true")
                .principal(principal);

        mockMvc.perform(request)
                .andExpect(status().is3xxRedirection());
                

       
    }

    @Test
    public void testAddFeedbackWithEmptyFeedback() throws Exception {
        RedirectAttributes ra = Mockito.mock(RedirectAttributes.class);

        MockHttpServletRequestBuilder request = MockMvcRequestBuilders.post("/addFeedback")
                .param("feedback", "")
                .param("dashboard", "true");
               

        mockMvc.perform(request)
                .andExpect(status().is3xxRedirection());
               
        verify(feedbackService, times(0)).saveFeedback(any(Feedback.class));
    }

    @Test
    public void testGetFeedbackList() throws Exception {
        List<Feedback> feedbackList = new ArrayList<>();
        feedbackList.add(new Feedback());
        feedbackList.add(new Feedback());
        when(feedbackRepository.findAll()).thenReturn(feedbackList);

        mockMvc.perform(get("/feedback"))
        .andExpect(status().is3xxRedirection());
               
    }
}
