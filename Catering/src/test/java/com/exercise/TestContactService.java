package com.exercise;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;

import org.springframework.boot.test.context.SpringBootTest;

import com.exercise.repo.ContactRepository;
import com.exercise.service.ContactService;

@SpringBootTest
public class TestContactService {

	@Mock
	private ContactRepository contactRepository;

	@InjectMocks
	private ContactService contactService;

	
	@Test
	public void testUpdateTime() {
		// Mocking the necessary input data
		String email = "test@example.com";
		String phone = "123456789";
		String address = "yangon";
		int id = 1;

		// Mocking the behavior of the ContactRepository's UpdateContact method
		// assuming it returns the number of updated contacts
		when(contactRepository.UpdateContact(email,address, phone, 1)).thenReturn(1);

		// Calling the method under test
		int result = contactService.updateTime(email,address, phone, id);

		// Verifying that the ContactRepository's UpdateContact method was called with the correct parameters
		verify(contactRepository, times(1)).UpdateContact(email,address, phone, 1);

		// Asserting the expected result
		assertEquals(1, result);
	}
}
