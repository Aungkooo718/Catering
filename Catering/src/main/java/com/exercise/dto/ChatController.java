package com.exercise.dto;

import java.security.Principal;
import java.sql.Date;
import java.time.LocalDateTime;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.Employee;
import com.exercise.model.ChatMessage;
import com.exercise.repo.ChatMessageRepository;
import com.exercise.service.ChatMessageService;

@Controller
public class ChatController {
    private final SimpMessagingTemplate messagingTemplate;
    private final ChatMessageService chatMessageService;
    
    @Autowired
    ChatMessageRepository chatMessageRepository;
    @Autowired
	 EmployeeRepository EmpRep;
    public ChatController(SimpMessagingTemplate messagingTemplate, ChatMessageService chatMessageService) {
        this.messagingTemplate = messagingTemplate;
        this.chatMessageService = chatMessageService;
    }
    
    @GetMapping("/chatMessage")
    public String images(HttpSession session,ModelMap model,Principal principal) {
      Employee emp=EmpRep.findByEmail(principal.getName());
     List<Employee> employees = EmpRep.findAllEmployees();
     model.addAttribute("employees", employees);
     model.addAttribute("senderId", emp.getStaffId());
     return "chatmessage";
    }

    @PostMapping("/chat")
    @ResponseBody
    public void processMessage(@RequestBody ChatMessageDto chatMessageDto,Principal principal) {
    	Employee emp=EmpRep.findByEmail(principal.getName());
    	String empName=EmpRep.findEmpName(chatMessageDto.getRecipientId());
    	System.out.println("hello"+chatMessageDto.getRecipientId());
    	chatmessage chat_message=new chatmessage();
    	
    	chat_message.setSenderId(emp.getStaffId());
    	chat_message.setSenderName(emp.getName());
    	chat_message.setRecipientId(chatMessageDto.getRecipientId());
    	chat_message.setRecipientName(empName);
    	chat_message.setContent(chatMessageDto.getContent());
    	chat_message.setTimestamp(chatMessageDto.getTimestamp());
    	chatMessageService.save(chat_message);
    	
    	for (java.lang.reflect.Field field : chatMessageDto.getClass().getDeclaredFields()) {
            field.setAccessible(true);
            try {
                Object value = field.get(chatMessageDto);
                System.out.println(field.getName() + ": " + value);
                
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }

    }
    
//    @GetMapping("/chat/{senderId}/{receiverId}/history")
//    @ResponseBody
//    public List<ChatMessage> getChatHistory(
//            @PathVariable("senderId") String senderId,
//            @PathVariable("receiverId") String receiverId) {
//        List<ChatMessage> chatHistory = chatMessageService.findBySenderIdAndRecipientIdOrderByTimestamp(senderId, receiverId);
//        chatHistory.addAll(chatMessageService.findBySenderIdAndRecipientIdOrderByTimestamp(receiverId, senderId));
//        Collections.sort(chatHistory, Comparator.comparing(ChatMessage::getTimestamp));
//        return chatHistory;
//    }
    
    @GetMapping("/chat/{senderId}/{receiverId}/history")
    @ResponseBody
    public List<chatmessage> getChatHistory(
            @PathVariable("senderId") String senderId,
            @PathVariable("receiverId") String receiverId) {
        List<chatmessage> chatHistory = chatMessageService.getChatHistory(senderId, receiverId);
        chatHistory.addAll(chatMessageService.getChatHistory(receiverId, senderId));
        Collections.sort(chatHistory, Comparator.comparing(chatmessage::getTimestamp));
        return chatHistory;
    }
}
