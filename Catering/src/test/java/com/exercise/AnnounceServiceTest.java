package com.exercise;


import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import com.exercise.model.Announce;
import com.exercise.repo.AnnounceRepo;
import com.exercise.service.AnnounceService;

@SpringBootTest
public class AnnounceServiceTest {

    @Mock
    private AnnounceRepo repo;

    @InjectMocks
    private AnnounceService announceService;

    @BeforeEach
    public void setup() {
        Announce announce = new Announce();
        announce.setId(1L);
        announce.setProfilePicture("profile.jpg");
        announce.setSize(100L);
        announce.setContent(new byte[] { 0x01, 0x02, 0x03 });
        announce.setText("Test Announcement");
        announce.setDays("5 days");

        when(repo.save(announce)).thenReturn(announce);

        List<Announce> announceList = new ArrayList<>();
        announceList.add(new Announce(1L, "Announcement 1", 100L, new byte[] { 0x01, 0x02 }, "Text 1", "2 days"));
        announceList.add(new Announce(2L, "Announcement 2", 200L, new byte[] { 0x03, 0x04 }, "Text 2", "3 days"));

        when(repo.findAll()).thenReturn(announceList);

        when(repo.findById(1L)).thenReturn(Optional.of(announce));

        Announce latestAnnounce = new Announce(1L, "Latest Announcement", 150L, new byte[] { 0x05, 0x06 }, "Latest Text", "4 days");
        when(repo.findFirstByOrderByIdDesc()).thenReturn(latestAnnounce);

        List<Announce> expiredAnnouncements = new ArrayList<>();
        expiredAnnouncements.add(new Announce(1L, "Expired Announcement 1", 120L, new byte[] { 0x07, 0x08 }, "Expired Text 1", "6 days"));
        expiredAnnouncements.add(new Announce(2L, "Expired Announcement 2", 180L, new byte[] { 0x09, 0x0A }, "Expired Text 2", "7 days"));
        when(repo.findAllExpired()).thenReturn(expiredAnnouncements);
    }


    @Test
    public void testCreateImage() {
        // Create a mock Announce object
        Announce announce = new Announce();
        announce.setId(1L);
        announce.setProfilePicture("test.jpg");
        announce.setSize(100L);
        announce.setContent(new byte[] { 0x01, 0x02, 0x03 });
        announce.setText("Test Announcement");
        announce.setDays("5 days");

        // Mock the repository's save method to return the mock Announce object
        when(repo.save(announce)).thenReturn(announce);

        // Call the createImage method
        Announce savedAnnounce = announceService.createImage(repo.save(announce));

        // Verify that the repository's save method was called with the mock Announce object

        // Perform assertions to check if the returned object matches the mock Announce object
        assertEquals(1L, savedAnnounce.getId());
        assertEquals("test.jpg", savedAnnounce.getProfilePicture());
        assertEquals(100L, savedAnnounce.getSize());
        assertArrayEquals(new byte[] { 0x01, 0x02, 0x03 }, savedAnnounce.getContent());
        assertEquals("Test Announcement", savedAnnounce.getText());
        assertEquals("5 days", savedAnnounce.getDays());
    }


    @Test
    public void testGetAllImage() {
        List<Announce> result = announceService.getAllImage();

        assertEquals(2, result.size());
        assertEquals("Announcement 1", result.get(0).getProfilePicture());
        assertEquals(100L, result.get(0).getSize());
        assertArrayEquals(new byte[] { 0x01, 0x02 }, result.get(0).getContent());
        assertEquals("Text 1", result.get(0).getText());
        assertEquals("2 days", result.get(0).getDays());

        assertEquals("Announcement 2", result.get(1).getProfilePicture());
        assertEquals(200L, result.get(1).getSize());
        assertArrayEquals(new byte[] { 0x03, 0x04 }, result.get(1).getContent());
        assertEquals("Text 2", result.get(1).getText());
        assertEquals("3 days", result.get(1).getDays());
    }

    @Test
    public void testFindAnnounceById() {
        Optional<Announce> result = announceService.findAnnounceById(1L);

        assertTrue(result.isPresent());
        assertEquals(1L, result.get().getId());
        assertEquals("Test Announcement", result.get().getText());
    }

    @Test
    public void testGetLatestAnnounce() {
        Announce result = announceService.getLatestAnnounce();

        assertEquals(1L, result.getId());
        assertEquals("Latest Announcement", result.getProfilePicture());
        assertEquals(150L, result.getSize());
        assertArrayEquals(new byte[] { 0x05, 0x06 }, result.getContent());
        assertEquals("Latest Text", result.getText());
        assertEquals("4 days", result.getDays());
    }

    @Test
    public void testFindExpiredAnnouncements() {
        List<Announce> result = announceService.findExpiredAnnouncements();

        assertEquals(2, result.size());
        assertEquals("Expired Announcement 1", result.get(0).getProfilePicture());
        assertEquals(120L, result.get(0).getSize());
        assertArrayEquals(new byte[] { 0x07, 0x08 }, result.get(0).getContent());
        assertEquals("Expired Text 1", result.get(0).getText());
        assertEquals("6 days", result.get(0).getDays());

        assertEquals("Expired Announcement 2", result.get(1).getProfilePicture());
        assertEquals(180L, result.get(1).getSize());
        assertArrayEquals(new byte[] { 0x09, 0x0A }, result.get(1).getContent());
        assertEquals("Expired Text 2", result.get(1).getText());
        assertEquals("7 days", result.get(1).getDays());
    }
 }



