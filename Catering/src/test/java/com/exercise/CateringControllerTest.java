package com.exercise;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;


@ExtendWith(SpringExtension.class)
@SpringBootTest
@AutoConfigureMockMvc
public class CateringControllerTest {
    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testLogin() throws Exception {
        MvcResult result = mockMvc.perform(get("/login"))
                .andExpect(status().isOk())
                .andExpect(view().name("Login"))
                .andReturn();

        // Perform additional assertions if needed
    }

    @Test
    public void testMnu() throws Exception {
        MvcResult result = mockMvc.perform(get("/"))
                .andExpect(status().is3xxRedirection())
                .andReturn();

        // Perform additional assertions if needed
    }

    @Test
    public void testDisplayView() throws Exception {
        MvcResult result = mockMvc.perform(get("/menuUpload"))
        		 .andExpect(MockMvcResultMatchers.status().is3xxRedirection())

                .andReturn();

        // Perform additional assertions if needed
    }

    @Test
    public void testUploadFile() throws Exception {
        // Provide a sample file for testing
        MockMultipartFile file = new MockMultipartFile(
                "file",
                "test.xlsx",
                "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
                "Test file content".getBytes()
        );

        MvcResult result = mockMvc.perform(multipart("/uploadExcel")
                .file(file))
        		 .andExpect(MockMvcResultMatchers.status().is3xxRedirection())
                .andReturn();

        // Perform additional assertions if needed
    }

    @Test
    public void testRegisterEat() throws Exception {
        String date = "2023-05-22";
        MvcResult result = mockMvc.perform(get("/registerEat/{date}", date))
        		 .andExpect(MockMvcResultMatchers.status().is3xxRedirection())

              
                .andReturn();

        // Perform additional assertions if needed
    }
    
    @Test
    public void testRegisterNoEat() throws Exception {
        String date = "2023-05-22";
        MvcResult result = mockMvc.perform(get("/registerNoEat/{date}", date))
        		.andExpect(MockMvcResultMatchers.status().is3xxRedirection())
            
                
                .andReturn();

        // Perform additional assertions if needed
    }

    @Test
    public void testUnregisterEat() throws Exception {
        String date = "2023-05-22";
        MvcResult result = mockMvc.perform(get("/unregisterEat/{date}", date))
        		.andExpect(MockMvcResultMatchers.status().is3xxRedirection())
               
                .andReturn();

        // Perform additional assertions if needed
    }
    
    @Test
    public void testReview() throws Exception {
        MvcResult result = mockMvc.perform(get("/review"))
        		.andExpect(MockMvcResultMatchers.status().is3xxRedirection())
               
                .andReturn();

        // Perform additional assertions if needed
    }

    @Test
    public void testShowForgotPasswordForm() throws Exception {
        MvcResult result = mockMvc.perform(get("/forgot_password"))
                .andExpect(status().isOk())
                .andExpect(view().name("forgot_password"))
                .andReturn();

        // Perform additional assertions if needed
    }

    @Test
    public void testProcessForgotPassword() throws Exception {
        
        MvcResult result = mockMvc.perform(post("/forgot_password"))
                .andExpect(status().isOk())
             
                .andReturn();

        // Perform additional assertions if needed
    }


//    @Test
//    public void testShowResetPasswordForm() throws Exception {
//        String token = "sampleToken";
//        mockMvc.perform(get("/reset_password")
//                .param("token", token))
//                .andExpect(status().isOk())
//                
//                .andExpect(model().attribute("token", token));
//    }
//
//    @Test
//    public void testProcessResetPassword() throws Exception {
//        String newPassword = "newPassword";
//        String confirmPassword = "newPassword";
//        String token = "sampleToken";
//        
//        mockMvc.perform(post("/reset_password")
//                .param("token", token)
//                .param("newPassword", newPassword)
//                .param("confirmPassword", confirmPassword))
//                .andExpect(status().is3xxRedirection())
//                .andExpect(view().name("redirect:/login"))
//                .andExpect(flash().attributeExists("successMessage"));
//    }

}
