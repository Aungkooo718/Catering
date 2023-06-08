package com.exercise;

import static org.hamcrest.Matchers.containsString;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.flash;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.service.ContactService;
import com.exercise.service.MailService;

@SpringBootTest
@AutoConfigureMockMvc
public class ContactControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private ContactService contactService;

    @MockBean
    private MailService mailService;

    @Test
    public void testSendEmail() throws Exception {
        HttpSession session = Mockito.mock(HttpSession.class);
        RedirectAttributes ra = Mockito.mock(RedirectAttributes.class);

        when(contactService.updateTime(anyString(), anyString(), anyString(), Mockito.anyInt())).thenReturn(1);

        MockHttpServletRequestBuilder request = MockMvcRequestBuilders.post("/contact")
                .param("email", "test@example.com")
                .param("phone", "1234567890")
                .param("address", "Test Address");
       

        mockMvc.perform(request)
                .andExpect(status().is3xxRedirection())
                ;

       
    }

    @Test
    public void testSendEmailFailure() throws Exception {
        HttpSession session = Mockito.mock(HttpSession.class);
        RedirectAttributes ra = Mockito.mock(RedirectAttributes.class);

        when(contactService.updateTime(anyString(), anyString(), anyString(), Mockito.anyInt())).thenReturn(0);

        MockHttpServletRequestBuilder request = MockMvcRequestBuilders.post("/contact")
                .param("email", "test@example.com")
                .param("phone", "1234567890")
                .param("address", "Test Address");

        mockMvc.perform(request)
                .andExpect(status().is3xxRedirection());
                

    }

    @Test
    public void testSendMail() throws Exception {
        RedirectAttributes ra = Mockito.mock(RedirectAttributes.class);

        when(mailService.updateTime(anyString(), anyString(), Mockito.anyInt())).thenReturn(1);

        MockHttpServletRequestBuilder request = MockMvcRequestBuilders.post("/mailSetting")
                .param("mail", "test@example.com")
                .param("pass", "testpassword");

                mockMvc.perform(request)
                        .andExpect(status().is3xxRedirection());
                       
                       

               
            }

            @Test
            public void testSendMailFailure() throws Exception {
                RedirectAttributes ra = Mockito.mock(RedirectAttributes.class);

                when(mailService.updateTime(anyString(), anyString(), Mockito.anyInt())).thenReturn(0);

                MockHttpServletRequestBuilder request = MockMvcRequestBuilders.post("/mailSetting")
                        .param("mail", "test@example.com")
                        .param("pass", "testpassword");

                mockMvc.perform(request)
                        .andExpect(status().is3xxRedirection());
                       

                
            }
        }

