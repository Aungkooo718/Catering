package com.exercise;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;

import com.exercise.model.Image;
import com.exercise.repo.ImageRepository;
import com.exercise.service.ImageService;

@SpringBootTest
public class ImageServiceTest {

    @Mock
    private ImageRepository imageRepository;

    @InjectMocks
    private ImageService imageService;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testCreateImage() {
        // Create a sample Image object
        Image image = new Image();
        image.setId(1L);
        image.setProfilePicture("image1.jpg");

        // Mock the behavior of the imageRepository.save() method
        when(imageRepository.save(any(Image.class))).thenReturn(image);

        // Call the createImage() method of the ImageService
        Image savedImage = imageService.createImage(image);

        // Verify the result
        assertEquals(image.getId(), savedImage.getId());
        assertEquals(image.getProfilePicture(), savedImage.getProfilePicture());
    }

    @Test
    public void testGetAllImage() {
        // Create a list of sample Image objects
        List<Image> images = new ArrayList<>();
        Image image1 = new Image();
        image1.setId(1L);
        image1.setProfilePicture("image1.jpg");
        Image image2 = new Image();
        image2.setId(2L);
        image2.setProfilePicture("image2.jpg");
        images.add(image1);
        images.add(image2);

        // Mock the behavior of the imageRepository.findAll() method
        when(imageRepository.findAll()).thenReturn(images);

        // Call the getAllImage() method of the ImageService
        List<Image> retrievedImages = imageService.getAllImage();

        // Verify the result
        assertEquals(2, retrievedImages.size());
        assertEquals(image1.getId(), retrievedImages.get(0).getId());
        assertEquals(image1.getProfilePicture(), retrievedImages.get(0).getProfilePicture());
        assertEquals(image2.getId(), retrievedImages.get(1).getId());
        assertEquals(image2.getProfilePicture(), retrievedImages.get(1).getProfilePicture());
    }

    @Test
    public void testFindImageById() {
        // Create a sample Image object
        Image image = new Image();
        image.setId(1L);
        image.setProfilePicture("image1.jpg");

        // Mock the behavior of the imageRepository.findById() method
        when(imageRepository.findById(1L)).thenReturn(Optional.of(image));

        // Call the findImageById() method of the ImageService
        Optional<Image> foundImage = imageService.findImageById(1L);

        // Verify the result
        assertEquals(image.getId(), foundImage.get().getId());
    }
}

