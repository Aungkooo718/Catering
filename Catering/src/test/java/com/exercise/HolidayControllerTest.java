package com.exercise;

import static org.hamcrest.Matchers.*;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import java.util.ArrayList;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;

import com.exercise.controller.HolidayController;
import com.exercise.model.Holiday;
import com.exercise.repo.HolidayRepository;
import com.exercise.service.HolidayService;

@SpringBootTest
@AutoConfigureMockMvc
@ExtendWith(SpringExtension.class)
@ExtendWith(MockitoExtension.class)
public class HolidayControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Mock
    private HolidayRepository holidayRepository;

    @Mock
    private HolidayService holidayService;

    @InjectMocks
    private HolidayController holidayController;

    @Test
    public void testHolidayView() throws Exception {
        List<Holiday> holidays = new ArrayList<>();
        holidays.add(new Holiday(1L, "Monday", "Labor Day"));
        holidays.add(new Holiday(2L, "Tuesday", "Independence Day"));


        mockMvc.perform(get("/holidayView"))
                .andExpect(status().is3xxRedirection());

                // Assert the final view and model attributes
         

    }


    // Add more test methods for other controller methods

}

