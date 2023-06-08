package com.exercise;

import static org.junit.jupiter.api.Assertions.assertEquals;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import com.exercise.model.AvoidMeat;
import com.exercise.controller.avoidMeatController;
import com.exercise.repo.AvoidMeatRepository;
import com.exercise.service.AvoidMeatService;
@SpringBootTest
public class AvoidMeatControllerTest {

    @Mock
    private AvoidMeatRepository avoidMeatRepo;

    @Mock
    private AvoidMeatService avoidMeatService;

    @InjectMocks
    private avoidMeatController avoidMeatController;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testAvoidMeat_ReturnsAvoidMeatView() {
        // Arrange
        Model model = mock(Model.class);
        HttpSession session = mock(HttpSession.class);
        List<AvoidMeat> avoidMeatList = new ArrayList<>();
        when(avoidMeatService.getAllAvoidMeats()).thenReturn(avoidMeatList);

        // Act
        String viewName = avoidMeatController.avoidMeat(model, session);

        // Assert
        assertEquals("AvoidMeat", viewName);
        verify(model).addAttribute("avoid", avoidMeatList);
        verify(session).removeAttribute("message");
    }

    @Test
    public void testAvoidMeatAdd_ReturnsAddAvoidMeatView() {
        // Arrange
        HttpSession session = mock(HttpSession.class);
        AvoidMeat avoidMeat = new AvoidMeat();
        when(avoidMeatService.getCount()).thenReturn(0);

        // Act
        ModelAndView modelAndView = avoidMeatController.AvoidMeatAdd(session);

        // Assert
        assertEquals("addavoidmeat", modelAndView.getViewName());
        assertEquals(1, ((AvoidMeat) modelAndView.getModel().get("avoid")).getId());
    }

    // ... Add more tests for other methods in the avoidMeatController class
}
