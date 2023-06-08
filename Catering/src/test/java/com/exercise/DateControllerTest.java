package com.exercise;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
public class DateControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testHolidaysAjax() throws Exception {
        mockMvc.perform(get("/Holidays/holidays"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());
    }

    @Test
    public void testHistorysAjax() throws Exception {
        mockMvc.perform(get("/Holidays/history"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());
    }

    @Test
    public void testRedateAjax() throws Exception {
        mockMvc.perform(get("/Holidays/redate"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());
    }

    @Test
    public void testRnedateAjax() throws Exception {
        mockMvc.perform(get("/Holidays/rnedate"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());
    }

    @Test
    public void testUedateAjax() throws Exception {
        mockMvc.perform(get("/Holidays/uedate"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());
    }
}

