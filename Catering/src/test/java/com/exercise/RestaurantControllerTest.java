package com.exercise;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@SpringBootTest
@AutoConfigureMockMvc
public class RestaurantControllerTest {
    
    @Autowired
    private MockMvc mockMvc;
    
    @Test
    public void testRestaurant() throws Exception {
        mockMvc.perform(get("/restaurant"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }
    
    @Test
    public void testAddRestaurant() throws Exception {
        mockMvc.perform(get("/addRestaurant"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }
    
    @Test
    public void testAddRestaurantPost() throws Exception {
        mockMvc.perform(post("/addRestaurant")
            .param("name", "Restaurant Name")
            .param("email", "test@example.com")
            .param("paymentReceiveName", "Payment Receiver")
            .param("phone", "1234567890")
            .param("price", "10.99")
            .param("address", "Restaurant Address")
            .param("city", "Restaurant City"))
            .andExpect(status().is3xxRedirection());
    }
    
    @Test
    public void testPriceTimeView() throws Exception {
        mockMvc.perform(get("/PriceTime"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }
    
    // Add more test methods for other endpoints
    
}
