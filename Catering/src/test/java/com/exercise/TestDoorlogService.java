package com.exercise;

import com.exercise.repo.DoorlogRepository;
import com.exercise.service.DoorLogService;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

public class TestDoorlogService {

	 @InjectMocks
    private DoorLogService doorLogService;

    @Mock
    private DoorlogRepository doorLogRepository;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
        doorLogService = new DoorLogService();
        doorLogService.setDoorLogRepository(doorLogRepository);
    }

    @Test
    public void testGetDoorlogNoOfLastDate() {
        // Create a sample list of doorlog numbers
        List<String> doorlogNos = List.of("123", "456", "789");

        // Mock the doorLogRepository's findDoorlogNosWithMaxDoorlogTime method to return the sample doorlog numbers
        when(doorLogRepository.findDoorlogNosWithMaxDoorlogTime()).thenReturn(doorlogNos);

        // Call the service method
        List<String> result = doorLogService.getDoorlogNoOfLastDate();

        // Verify that the repository's findDoorlogNosWithMaxDoorlogTime method was called
        verify(doorLogRepository).findDoorlogNosWithMaxDoorlogTime();

        // Perform assertions
        assertEquals(3, result.size());
        assertEquals("123", result.get(0));
        assertEquals("456", result.get(1));
        assertEquals("789", result.get(2));
    }

    @Test
    public void testGetDoorlogCountByLastDate() {
        // Create a sample list of doorlog numbers
        List<String> doorlogNos = List.of("123", "456", "789");

        // Mock the doorLogRepository's findDoorlogNosWithMaxDoorlogTime method to return the sample doorlog numbers
        when(doorLogRepository.findDoorlogNosWithMaxDoorlogTime()).thenReturn(doorlogNos);

        // Call the service method
        int result = doorLogService.getDoorlogCountByLastDate();

        // Verify that the repository's findDoorlogNosWithMaxDoorlogTime method was called
        verify(doorLogRepository).findDoorlogNosWithMaxDoorlogTime();

        // Perform assertions
        assertEquals(3, result);
    }

    @Test
    public void testGetDoorlogTimeOfLastDate() {
        // Define a sample doorlog time
        String doorlogTime = "2023-05-20 10:30:00";

        // Mock the doorLogRepository's getMaxDoorlogtime method to return the sample doorlog time
        when(doorLogRepository.getMaxDoorlogtime()).thenReturn(doorlogTime);

        // Call the service method
        String result = doorLogService.getDoorlogTimeOfLastDate();

        // Verify that the repository's getMaxDoorlogtime method was called
        verify(doorLogRepository).getMaxDoorlogtime();

        // Perform assertions
        assertEquals(doorlogTime, result);
    }

    @Test
    public void testGetDoorlogNosByDateRange() {
        // Create sample results from the repository query
        Object[] result1 = {"123", "2023-05-20"};
        Object[] result2 = {"456", "2023-05-21"};
        List<Object[]> results = new ArrayList<>();
        results.add(result1);
        results.add(result2);

        // Define the start and end dates
        String startDate = "2023-05-20";
        String endDate = "2023-05-21";

        // Mock the doorLogRepository's findDoorlogNosByDateRange method to return the sample results
        when(doorLogRepository.findDoorlogNosByDateRange(startDate, endDate)).thenReturn(results);

        // Call the service method
        Map<String, List<String>> resultMap = doorLogService.getDoorlogNosByDateRange(startDate, endDate);

        // Verify that the repository's findDoorlogNosByDateRange method was called
        verify(doorLogRepository).findDoorlogNosByDateRange(startDate, endDate);

        // Perform assertions
        assertEquals(2, resultMap.size());
        assertEquals(1, resultMap.get("2023-05-20").size());
        assertEquals(1, resultMap.get("2023-05-21").size());
        assertEquals("123", resultMap.get("2023-05-20").get(0));
        assertEquals("456", resultMap.get("2023-05-21").get(0));
    }

    // Add more test methods for the remaining service methods

}

