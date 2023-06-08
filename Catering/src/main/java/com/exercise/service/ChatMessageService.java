package com.exercise.service;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.JpaSort;

import org.springframework.stereotype.Service;

import com.exercise.dto.chatmessage;
import com.exercise.model.ChatMessage;
import com.exercise.repo.ChatMessageRepository;
import java.util.Comparator;

@Service
public class ChatMessageService {
    private final ChatMessageRepository chatMessageRepository;

    public ChatMessageService(ChatMessageRepository chatMessageRepository) {
        this.chatMessageRepository = chatMessageRepository;
    }

    public chatmessage save(chatmessage chatMessage) {
        // Implement saving logic using chatMessageRepository
        return chatMessageRepository.save(chatMessage);
    }
    
//    public List<ChatMessage> findBySenderIdAndRecipientIdOrderByTimestamp(String senderId, String recipientId) {
//        Sort sort = Sort.by(Sort.Direction.ASC, "timestamp");
//        List<ChatMessage> messages = chatMessageRepository.findBySenderIdAndRecipientIdOrderByTimestamp(senderId, recipientId);
//        Collections.reverse(messages);
//
//        return messages;
//    }
    
    
//    public List<ChatMessage> findBySenderIdAndRecipientIdOrderByTimestamp(String senderId, String recipientId) {
//        Sort sort = JpaSort.unsafe(Sort.Direction.DESC, "timestamp_nulls_first");
//        return chatMessageRepository.findBySenderIdAndRecipientId(senderId, recipientId, sort);
//    }
    
//    public List<ChatMessage> findBySenderIdAndRecipientIdOrderByTimestamp(String senderId, String recipientId) {
//        List<ChatMessage> messages = chatMessageRepository.findBySenderIdAndRecipientId(senderId, recipientId);
//        return messages.stream()
//                .sorted(Comparator.comparing(ChatMessage::getTimestamp).reversed()
//                        .thenComparing(Comparator.comparing(ChatMessage::getTimestamp)))
//                .collect(Collectors.toList());
//    }
    
//    public List<ChatMessage> findBySenderIdAndRecipientIdOrderByTimestamp(String senderId, String recipientId) {
//        List<ChatMessage> messages = chatMessageRepository.findBySenderIdAndRecipientId(senderId, recipientId);
//        
//        // Sort the messages based on timestamp
//        Collections.sort(messages, Comparator.comparing(ChatMessage::getTimestamp));
//        
//        return messages;
//    }
    
//    public List<ChatMessage> findBySenderIdAndRecipientIdOrderByTimestamp(String senderId, String recipientId) {
//        Sort sort = Sort.by(Sort.Direction.ASC, "timestamp");
//        return chatMessageRepository.findBySenderIdAndRecipientId(senderId, recipientId, sort);
//    }
    
    public List<chatmessage> getChatHistory(String senderId, String recipientId) {
        Sort sort = Sort.by(Sort.Direction.DESC, "timestamp");
        List<chatmessage> chatMessages = chatMessageRepository.findBySenderIdAndRecipientId(senderId, recipientId, sort);
        Collections.reverse(chatMessages); // Reverse the order to have the latest messages first
        return chatMessages;
    }

}



