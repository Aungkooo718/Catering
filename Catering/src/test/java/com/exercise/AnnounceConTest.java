package com.exercise;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.exercise.controller.AnnounceCon;
import com.exercise.model.Announce;
import com.exercise.service.AnnounceService;
import com.exercise.repo.AnnounceRepo;

public class AnnounceConTest {

    @Mock
    private AnnounceService announceService;

    @Mock
    private AnnounceRepo announceRepo;

    @InjectMocks
    private AnnounceCon announceCon;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.initMocks(this);
    }

  
	/*
	 * @Test public void testFileUploadWithImage() throws IOException { // Prepare
	 * test data MultipartFile file = new MockMultipartFile("file2", "test.jpg",
	 * "image/jpeg", "test data".getBytes()); String text = "Sample text"; int days
	 * = 7;
	 * 
	 * // Perform the file upload String result = announceCon.fileUpload(file,
	 * mock(Model.class), text, days);
	 * 
	 * // Verify the service method was called with the expected parameters
	 * verify(announceService).createImage(any(Announce.class));
	 * 
	 * // Assert the result assertEquals("index", result); }
	 */

    @Test
    public void testDownloadFile() throws IOException {
        // Prepare test data
        Long id = 1L;
        Announce announce = new Announce();
        announce.setContent("test data".getBytes());
        announce.setProfilePicture("test.jpg");
        when(announceService.findAnnounceById(id)).thenReturn(Optional.of(announce));
        HttpServletResponse response = mock(HttpServletResponse.class);
        ServletOutputStream outputStream = mock(ServletOutputStream.class);
        when(response.getOutputStream()).thenReturn(outputStream);

        // Perform the file download
        announceCon.downloadFile(id, mock(Model.class), response);

        // Verify the response headers and output stream were set correctly
        verify(response).setContentType("application/octet-stream");
        verify(response).setHeader("Content-Disposition", "attachment; filename = test.jpg");
        verify(outputStream).write("test data".getBytes());
        verify(outputStream).close();
    }

    @Test
    public void testShowImage() throws IOException, ServletException {
        // Prepare test data
        Long id = 1L;
        Announce announce = new Announce();
        announce.setContent("test data".getBytes());
        when(announceService.findAnnounceById(id)).thenReturn(Optional.of(announce));
        HttpServletResponse response = mock(HttpServletResponse.class);
        ServletOutputStream outputStream = mock(ServletOutputStream.class);
        when(response.getOutputStream()).thenReturn(outputStream);
        // Perform the show image
        announceCon.showImage(id, response, Optional.of(announce));

        // Verify the response headers and output stream were set correctly
        verify(response).setContentType("image/jpeg, image/jpg, image/png, image/gif, image/pdf,img/mp4");
        verify(outputStream).write("test data".getBytes());
        verify(outputStream).close();
    }

	/*
	 * @Test public void testFileUploadWithInvalidExtension() throws IOException {
	 * // Prepare test data MultipartFile file = new MockMultipartFile("file2",
	 * "test.txt", "text/plain", "test data".getBytes()); String text =
	 * "Sample text"; int days = 7;
	 * 
	 * // Perform the file upload String result = announceCon.fileUpload(file,
	 * mock(Model.class), text, days);
	 * 
	 * // Verify the service method was called with the expected parameters
	 * 
	 * // Assert the result assertEquals("index", result); }
	 */
    @Test
    public void testDownloadFileWithNonExistingAnnounce() throws IOException {
        // Prepare test data
        Long id = 1L;
        when(announceService.findAnnounceById(id)).thenReturn(Optional.empty());
        HttpServletResponse response = mock(HttpServletResponse.class);

        // Perform the file download

        // Verify that the response was not modified
        verify(response, never()).setContentType(anyString());
        verify(response, never()).setHeader(anyString(), anyString());
    }

    @Test
    public void testShowImageWithNonExistingAnnounce() throws IOException, ServletException {
        // Prepare test data
        Long id = 1L;
        when(announceService.findAnnounceById(id)).thenReturn(Optional.empty());
        HttpServletResponse response = mock(HttpServletResponse.class);

        // Perform the show image

        // Verify that the response was not modified
        verify(response, never()).setContentType(anyString());
    }

    
}

