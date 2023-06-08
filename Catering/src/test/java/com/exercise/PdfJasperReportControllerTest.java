package com.exercise;


import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import com.exercise.model.PdfJasperReport;
import com.exercise.repo.PdfJasperReportRepository;
import com.exercise.service.PdfJasperReportService;
import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootTest
@AutoConfigureMockMvc
public class PdfJasperReportControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private PdfJasperReportRepository jasperReportRepository;

    @Autowired
    private PdfJasperReportService jasperReportService;

    @Test
    public void testGenerateReport() throws Exception {
        List<PdfJasperReport> tableData = new ArrayList<>();
        tableData.add(new PdfJasperReport("Item 1", 10));
        tableData.add(new PdfJasperReport("Item 2", 20));

        mockMvc.perform(post("/viewCostReport/pdf")
                .contentType(MediaType.APPLICATION_JSON)
                .content(asJsonString(tableData)))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
        // Add assertions to validate the behavior or generated report, if applicable

        // Clean up the data after the test
    }

    private String asJsonString(Object obj) {
        try {
            return new ObjectMapper().writeValueAsString(obj);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

