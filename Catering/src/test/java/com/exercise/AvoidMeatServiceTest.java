package com.exercise;
import com.exercise.model.AvoidMeat;

import com.exercise.repo.AvoidMeatRepository;
import com.exercise.service.AvoidMeatService;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

public class AvoidMeatServiceTest {

	@InjectMocks
    private AvoidMeatService avoidMeatService;

    @Mock
    private AvoidMeatRepository avoidMeatRepository;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
        avoidMeatService = new AvoidMeatService(avoidMeatRepository);
    }

    @Test
    public void testGetAllAvoidMeats() {
        // Create sample AvoidMeat objects
        AvoidMeat avoidMeat1 = new AvoidMeat(1, "Avoid Meat 1");
        AvoidMeat avoidMeat2 = new AvoidMeat(2, "Avoid Meat 2");
        List<AvoidMeat> avoidMeats = new ArrayList<>();
        avoidMeats.add(avoidMeat1);
        avoidMeats.add(avoidMeat2);

        // Mock the avoidMeatRepository's findAll method to return the sample AvoidMeat objects
        when(avoidMeatRepository.findAll()).thenReturn(avoidMeats);

        // Call the service method
        List<AvoidMeat> result = avoidMeatService.getAllAvoidMeats();

        // Verify that the repository's findAll method was called
        verify(avoidMeatRepository).findAll();

        // Perform assertions
        assertEquals(2, result.size());
        assertEquals("Avoid Meat 1", result.get(0).getName());
        assertEquals("Avoid Meat 2", result.get(1).getName());
    }

    @Test
    public void testGetAvoidMeatsByIds() {
        // Create a sample list of IDs
        List<Integer> ids = List.of(1, 2);

        // Create sample AvoidMeat objects
        AvoidMeat avoidMeat1 = new AvoidMeat(1, "Avoid Meat 1");
        AvoidMeat avoidMeat2 = new AvoidMeat(2, "Avoid Meat 2");
        List<AvoidMeat> avoidMeats = new ArrayList<>();
        avoidMeats.add(avoidMeat1);
        avoidMeats.add(avoidMeat2);

        // Mock the avoidMeatRepository's findAllById method to return the sample AvoidMeat objects
        when(avoidMeatRepository.findAllById(ids)).thenReturn(avoidMeats);

        // Call the service method
        List<AvoidMeat> result = avoidMeatService.getAvoidMeatsByIds(ids);

        // Verify that the repository's findAllById method was called
        verify(avoidMeatRepository).findAllById(ids);

        // Perform assertions
        assertEquals(2, result.size());
        assertEquals("Avoid Meat 1", result.get(0).getName());
        assertEquals("Avoid Meat 2", result.get(1).getName());
    }

    // Add more test methods for the remaining service methods

}
