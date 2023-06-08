package com.exercise;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.when;

import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;

import com.exercise.model.Holiday;
import com.exercise.repo.HolidayRepository;
import com.exercise.service.HolidayService;

@SpringBootTest
public class TestHolidayService {
    
    @Mock
    private HolidayRepository holidayRepository;
    
    @InjectMocks
    private HolidayService holidayService;
    
    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
    }
    
    @Test
    public void testInsertUser() {
        // Create a sample Holiday object
        Holiday holiday = new Holiday();
        holiday.setId(1L);
        holiday.setHolidays("New Year");
        
        // Mock the behavior of the holidayRepository.save() method
        when(holidayRepository.save(any(Holiday.class))).thenReturn(holiday);
        
        // Call the insertUser() method of the HolidayService
        Holiday savedHoliday = holidayService.insertUser(holiday);
        
        // Verify the result
        assertEquals(holiday.getId(), savedHoliday.getId());
        assertEquals(holiday.getHolidays(), savedHoliday.getHolidays());
    }
    
    @Test
    public void testUpdate() {
        // Create a sample Holiday object
        Holiday holiday = new Holiday();
        holiday.setId(1L);
        holiday.setHolidays("Christmas");
        
        // Mock the behavior of the holidayRepository.save() method
        when(holidayRepository.save(any(Holiday.class))).thenReturn(holiday);
        
        // Call the update() method of the HolidayService
        int result = holidayService.update(holiday, 1L);
        
        // Verify the result
        assertEquals(1, result);
    }
    
    @Test
    public void testDeleteHoliday() {
        // Mock the behavior of the holidayRepository.deleteById() method
        doNothing().when(holidayRepository).deleteById(1L);
        
        // Call the deleteHoliday() method of the HolidayService
        int result = holidayService.deleteHoliday(1L);
        
        // Verify the result
        assertEquals(1, result);
    }
    
    @Test
    public void testGetHoliById() {
        // Create a sample Holiday object
        Holiday holiday = new Holiday();
        holiday.setId(1L);
        holiday.setHolidays("Easter");
        
        // Mock the behavior of the holidayRepository.findById() method
        when(holidayRepository.findById(1L)).thenReturn(Optional.of(holiday));
        
        // Call the getHoliById() method of the HolidayService
        Optional<Holiday> foundHoliday = holidayService.getHoliById(1L);
        
        // Verify the result
        assertEquals(holiday.getId(), foundHoliday.get().getId());
        assertEquals(holiday.getHolidays(), foundHoliday.get().getHolidays());
    }
}
