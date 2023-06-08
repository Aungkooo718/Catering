package com.exercise;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;

import com.exercise.repo.DateRegisterRepository;
import com.exercise.service.DateRegisterService;

@SpringBootTest
public class TestDateRegisterService
{
	@Mock
    private DateRegisterRepository dateRegisterRepository;

    @InjectMocks
    private DateRegisterService dateRegisterService;
    
    @Test
    public void testGetDoorLogNosAndDateByDateRange() {
        // Mocking the necessary input data
        String startDate = "2023-01-01";
        String endDate = "2023-01-31";

        // Mocking the behavior of the DateRegisterRepository's findDoorLogNosAndDateByDateRange method
        // assuming it returns a list of object arrays with doorlogNo and doorlogDate
        Object[] result1 = {"doorlogNo1", "2023-01-01"};
        Object[] result2 = {"doorlogNo2", "2023-01-02"};
        Object[] result3 = {"doorlogNo1", "2023-01-02"};
        List<Object[]> mockedResults = Arrays.asList(result1, result2, result3);
        when(dateRegisterRepository.findDoorLogNosAndDateByDateRange(startDate, endDate))
                .thenReturn(mockedResults);

        // Calling the method under test
        Map<String, List<String>> doorlogNosAndDateByDate = dateRegisterService.getDoorLogNosAndDateByDateRange(startDate, endDate);

        // Verifying the expected result
        Map<String, List<String>> expectedDoorlogNosAndDateByDate = new HashMap<>();
        expectedDoorlogNosAndDateByDate.put("2023-01-01", new ArrayList<>(Arrays.asList("doorlogNo1")));
        expectedDoorlogNosAndDateByDate.put("2023-01-02", new ArrayList<>(Arrays.asList("doorlogNo2", "doorlogNo1")));

        assertEquals(expectedDoorlogNosAndDateByDate, doorlogNosAndDateByDate);
    }
}
