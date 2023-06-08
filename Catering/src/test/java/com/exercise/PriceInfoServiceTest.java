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

import com.exercise.model.PriceInfo;
import com.exercise.repo.PriceInfoRepository;
import com.exercise.service.PriceInfoService;

@SpringBootTest
public class PriceInfoServiceTest {

    @Mock
    private PriceInfoRepository priceInfoRepository;

    @InjectMocks
    private PriceInfoService priceInfoService;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testUpdate() {
        // Create a sample PriceInfo object
        PriceInfo priceInfo = new PriceInfo();
        priceInfo.setId(1);
        priceInfo.setCompanyPrice(10.99);
        priceInfo.setEmployeePrice(10.99);

        // Mock the behavior of the priceInfoRepository.save() method
        when(priceInfoRepository.save(any(PriceInfo.class))).thenReturn(priceInfo);

        // Call the update() method of the PriceInfoService
        int result = priceInfoService.update(priceInfo, 1);

        // Verify the result
        assertEquals(1, result);
        verify(priceInfoRepository).save(priceInfo);
    }
}
