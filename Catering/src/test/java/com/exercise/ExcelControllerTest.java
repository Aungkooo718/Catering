package com.exercise;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@SpringBootTest
@AutoConfigureMockMvc
public class ExcelControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testUploadHolidayToDatabase() throws Exception {
        MockMultipartFile file = new MockMultipartFile("file", "holidays.xlsx", MediaType.MULTIPART_FORM_DATA_VALUE,
                getClass().getResourceAsStream("/test-files/holidays.xlsx"));

        mockMvc.perform(MockMvcRequestBuilders.multipart("/api/excel/uploadHolidayToDatabase")
                .file(file))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }

    @Test
    public void testUploadDoorlogToDatabase() throws Exception {
        MockMultipartFile file = new MockMultipartFile("file", "doorlog.xlsx", MediaType.MULTIPART_FORM_DATA_VALUE,
                getClass().getResourceAsStream("/test-files/doorlog.xlsx"));

        mockMvc.perform(MockMvcRequestBuilders.multipart("/api/excel/uploadDoorlogToDatabase")
                .file(file))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
                
    }

    @Test
    public void testGetAllTutorials() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/api/excel/tutorials"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
             
    }

    // Add more test methods for other endpoints and functionalities

}
