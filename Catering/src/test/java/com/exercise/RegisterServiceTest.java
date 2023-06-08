package com.exercise;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;

import com.exercise.dao.RegisterRepository;
import com.exercise.dto.DateRegister;
import com.exercise.dto.register;
import com.exercise.model.AvoidMeat;
import com.exercise.repo.AvoidMeatRepository;
import com.exercise.repo.DateRegisterRepository;
import com.exercise.service.RegisterService;

import java.util.ArrayList;
import java.util.List;


import static org.mockito.Mockito.*;

@SpringJUnitConfig
@SpringBootTest
class RegisterServiceTest {

    @Autowired
    private RegisterService registerService;

    @MockBean
    private AvoidMeatRepository avoidMeatRepository;

    @MockBean
    private RegisterRepository registerRepository;

    @MockBean
    private DateRegisterRepository dateRegisterRepository;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testSaveRegisterWithAvoidMeats() {
        // Create test data
        register regist = new register();
        List<DateRegister> date = new ArrayList<>();
        List<Integer> avoidMeatIds = new ArrayList<>();
        avoidMeatIds.add(1);
        avoidMeatIds.add(2);

        AvoidMeat avoidMeat1 = new AvoidMeat();
        avoidMeat1.setId(1);
        AvoidMeat avoidMeat2 = new AvoidMeat();
        avoidMeat2.setId(2);

        when(avoidMeatRepository.findById(1)).thenReturn(avoidMeat1);
        when(avoidMeatRepository.findById(2)).thenReturn(avoidMeat2);

        // Perform the test
        registerService.saveRegisterWithAvoidMeats(regist, date, avoidMeatIds);

        // Verify the interactions
        verify(registerRepository).save(regist);
        verify(dateRegisterRepository, times(date.size())).save(any(DateRegister.class));
    }

    // Add more test methods for other methods in RegisterService if needed
}
