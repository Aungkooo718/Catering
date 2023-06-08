package com.exercise.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

import org.springframework.stereotype.Component;
@Component
public class retrieveImage {
	 public byte[] retrieveImageDataFromServer(Long imageId) {
		   	
	       String imageUrl = "/image?id=" + imageId; // Replace with the appropriate image URL

	       try {
	           URL url = new URL(imageUrl);
	           URLConnection connection = url.openConnection();
	           InputStream inputStream = connection.getInputStream();
	           ByteArrayOutputStream outputStream = new ByteArrayOutputStream();

	           byte[] buffer = new byte[4096];
	           int bytesRead;
	           while ((bytesRead = inputStream.read(buffer)) != -1) {
	               outputStream.write(buffer, 0, bytesRead);
	           }

	           inputStream.close();
	           outputStream.close();

	           return outputStream.toByteArray();
	       } catch (IOException e) {
	           e.printStackTrace();
	           // Handle any exceptions that occur during the image retrieval
	       }

	       return null; // Return null if the image retrieval fails
	   }
}
