package com.exercise;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;

import com.exercise.model.PriceInfo;
import com.exercise.model.Restaurant;
import com.exercise.repo.PriceInfoRepository;
import com.exercise.repo.RestaurantRepository;
import com.exercise.service.RestaurantService;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

@SpringJUnitConfig
@SpringBootTest
class RestaurantServiceTest {

    @Autowired
    private RestaurantService restaurantService;

    @MockBean
    private RestaurantRepository restaurantRepository;

    @MockBean
    private PriceInfoRepository priceInfoRepository;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testAddRestaurant() {
        // Create test data
        Restaurant restaurant = new Restaurant();

        // Perform the test
        restaurantService.addRestaurant(restaurant);

        // Verify the interaction
        verify(restaurantRepository).save(restaurant);
    }

    @Test
    void testGetAllRestaurant() {
        // Create test data
        List<Restaurant> expectedRestaurants = new ArrayList<>();
        expectedRestaurants.add(new Restaurant());
        expectedRestaurants.add(new Restaurant());

        when(restaurantRepository.findAll()).thenReturn(expectedRestaurants);

        // Perform the test
        List<Restaurant> actualRestaurants = restaurantService.getAllRestaurant();

        // Verify the result
        assertEquals(expectedRestaurants, actualRestaurants);
        verify(restaurantRepository).findAll();
    }

    @Test
    void testAddPriceInfo() {
        // Create test data
        PriceInfo priceInfo = new PriceInfo();

        // Perform the test
        restaurantService.addPriceInfo(priceInfo);

        // Verify the interaction
        verify(priceInfoRepository).save(priceInfo);
    }

    @Test
    void testUpdate() {
        // Create test data
        Restaurant restaurant = new Restaurant();
        int expectedResult = 1;

        when(restaurantRepository.save(restaurant)).thenReturn(restaurant);

        // Perform the test
        int actualResult = restaurantService.update(restaurant, 1);

        // Verify the result
        assertEquals(expectedResult, actualResult);
        verify(restaurantRepository).save(restaurant);
    }

    // Add more test methods for other methods in RestaurantService if needed
}
