package com.exercise;

import static org.assertj.core.api.Assertions.assertThat;

import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;



import java.util.Optional;


import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.web.servlet.MockMvc;

import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import com.exercise.controller.ImageController;
import com.exercise.model.Image;
import com.exercise.repo.ImageRepository;
import com.exercise.service.AnnounceService;
import com.exercise.service.ImageService;


@SpringBootTest
@AutoConfigureMockMvc
public class ImageControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Mock
    private ImageService imageService;

    @Mock
    private ImageRepository imageRepository;

    @Mock
    private AnnounceService announceService;

    @InjectMocks
    private ImageController imageController;

    @Test
    public void testFileUpload() throws Exception {
        MockMultipartFile file = new MockMultipartFile("file", "test.pdf", "application/pdf", "pdf data".getBytes());

        mockMvc.perform(MockMvcRequestBuilders.multipart("/upload").file(file))
                .andExpect(status().is3xxRedirection()) // Expect a redirection
                .andReturn();

        // Verify that the service method createImage() is called with the expected argument
    }


    @Test
    public void testDownloadFile() throws Exception {
        Image image = new Image();
        image.setId(1L);
        image.setProfilePicture("test.jpg");
        image.setContent("image data".getBytes());

        when(imageService.findImageById(1L)).thenReturn(Optional.of(image));

        MockHttpServletResponse response = mockMvc.perform(get("/downloadfile").param("id", "1"))
                .andReturn()
                .getResponse();

    }

    @Test
    public void testShowImage() throws Exception {
        Image image = new Image();
        image.setId(1L);
        image.setProfilePicture("test.jpg");
        image.setContent("image data".getBytes());

        when(imageService.findImageById(1L)).thenReturn(Optional.of(image));

        mockMvc.perform(get("/image").param("id", "1"))
                .andExpect(status().is3xxRedirection()) // Expect a redirection
                .andReturn();

        // Verify that the service method findImageById() is called with the expected argument
    }

}

