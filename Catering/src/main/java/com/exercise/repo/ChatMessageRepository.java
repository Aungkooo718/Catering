package com.exercise.repo;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.exercise.dto.chatmessage;
import com.exercise.model.ChatMessage;

@Repository
public interface ChatMessageRepository extends JpaRepository<chatmessage, String> {
	// List<ChatMessage> findBySenderIdAndRecipientIdOrderByTimestampDesc(String senderId, String recipientId);

	// List<ChatMessage> findBySenderIdAndRecipientIdOrderByTimestampAsc(String senderId, String recipientId);
//	 List<ChatMessage> findBySenderIdAndRecipientId(String senderId, String recipientId, Sort sort);
//		
//	 @Query("SELECT c FROM ChatMessage c WHERE c.senderId = :senderId AND c.recipientId = :recipientId ORDER BY c.timestamp ASC")
//	    List<ChatMessage> findBySenderIdAndRecipientIdOrderByTimestamp(String senderId, String recipientId);
//	
	@Query("SELECT c FROM chatmessage c WHERE c.senderId = :senderId AND c.recipientId = :recipientId ORDER BY c.timestamp DESC")
	List<chatmessage> findBySenderIdAndRecipientId(String senderId, String recipientId, Sort sort);


}
