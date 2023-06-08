package com.exercise;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@SpringBootTest
@AutoConfigureMockMvc
public class DoorLogControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testGetDoorLogList() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/doorlog"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }

    @Test
    public void testEditDoorLogForm() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/doorlog/2023-05-22/1/edit"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
               
    }

    @Test
    public void testUpdateDoorLog() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.post("/doorlog/2023-05-22/1/update")
                .param("department", "New Department")
                .param("name", "New Name"))
                .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }

    @Test
    public void testDeleteDoorLog() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/doorlog/2023-05-22/1/delete"))
                .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
               
    }

    // Add more test methods for other endpoints and functionalities

}

