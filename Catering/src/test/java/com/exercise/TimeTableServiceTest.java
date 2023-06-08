package com.exercise;

import java.sql.Time;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.exercise.dao.TimeTableRepository;
import com.exercise.service.TimeTableService;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

public class TimeTableServiceTest {

    @Mock
    private TimeTableRepository timeTableRepository;
    @InjectMocks
    private TimeTableService timeTableService;
    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
        timeTableService = new TimeTableService(timeTableRepository);
    }
    @Test
    public void testUpdateTime_ValidInput_Success() {
        String date = "2023-05-17";
        Time time = Time.valueOf("12:34:56");
        int timeId = 1;
        int expectedResult = 1;

        when(timeTableRepository.UpdateTime(date, time, timeId)).thenReturn(expectedResult);

        int result = timeTableRepository.UpdateTime(date, time, timeId);

        assertEquals(expectedResult, result);
        verify(timeTableRepository).UpdateTime(date, time, timeId);
    }
}

