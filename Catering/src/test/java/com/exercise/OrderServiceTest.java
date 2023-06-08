package com.exercise;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;

import com.exercise.dto.OrderDTO;
import com.exercise.repo.OrderRepository;
import com.exercise.service.OrderService;

@SpringBootTest
public class OrderServiceTest {

    @Mock
    private OrderRepository orderRepository;

    @InjectMocks
    private OrderService orderService;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testSaveOrder() {
        // Create a sample order DTO object
        OrderDTO order = new OrderDTO();
        order.setDate("2023-05-20");
        order.setPeople(5);
        order.setAmount(100);
        order.setComAmount(50);
        order.setPeopleAmount(20);
        order.setPrice(200);
        order.setVoucherId(123);

        // Call the service method
        orderService.Save(order);

        // Verify that the repository's save method was called with the correct order DTO object
        verify(orderRepository).save(order);
    }

    @Test
    public void testFindByVoucherId() {
        int voucherId = 123;
        List<OrderDTO> expectedList = new ArrayList<>();
        // Add expected OrderDTO objects to the list
        
        // Mock the repository method to return the expected list
        when(orderRepository.findByVoucherId(voucherId)).thenReturn(expectedList);

        // Call the service method
        List<OrderDTO> resultList = orderService.findByVoucherId(voucherId);

        // Verify that the repository's findByVoucherId method was called with the correct voucherId
        verify(orderRepository).findByVoucherId(voucherId);
        // Verify the returned list matches the expected list
        assertEquals(expectedList, resultList);
    }
}
