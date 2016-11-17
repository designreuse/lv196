package com.softserve.edu.delivery.controller;

import com.softserve.edu.delivery.dto.ChatDto;
import com.softserve.edu.delivery.dto.ChatHistoryDto;
import com.softserve.edu.delivery.dto.ChatMessageDto;
import com.softserve.edu.delivery.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import static com.softserve.edu.delivery.config.SecurityConstraints.AUTHENTICATED;
import static com.softserve.edu.delivery.config.SecurityConstraints.CUSTOMER_OR_DRIVER;

@Controller
public class ChatController {

    @Autowired
    private ChatService chatService;

    @Autowired
    private SimpMessagingTemplate messagingTemplate;

    @MessageMapping("/chat/{chatId}")
    void handleMessage(@DestinationVariable("chatId") Long chatId,
                              @Payload ChatMessageDto dto, Principal principal) {

        dto = chatService.saveMessage(dto.setChatId(chatId)
                .setAuthorEmail(principal.getName())
                .setTimestamp(new Timestamp(new Date().getTime())));
        messagingTemplate.convertAndSend("/topic/chat/" + chatId, dto);


        String receiver = chatService.findReceiverEmail(chatId, dto.getAuthorEmail());
        messagingTemplate.convertAndSendToUser(receiver, "/queue/chat-notifications", dto.getChatId().toString());
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "/conversation", method = RequestMethod.GET)
    @ResponseBody
    List<ChatDto> conversation(Principal principal) {
        return chatService.findByParticipant(principal.getName());
    }

    @PreAuthorize(AUTHENTICATED)
    @RequestMapping(path = "/chat/{chatId}/{page}/{size}", method = RequestMethod.GET)
    @ResponseBody
    ResponseEntity<ChatHistoryDto> chatHistory(@PathVariable Long chatId, @PathVariable Integer page,
                                                      @PathVariable Integer size, Principal principal) {
        return chatService
                .findByIdAndParticipant(chatId, principal.getName())
                .map(chat -> new ResponseEntity<>(chatService.findMessagesHistory(chatId, page, size), HttpStatus.OK))
                .orElseGet(() -> new ResponseEntity<>(HttpStatus.PRECONDITION_FAILED));
    }

    @PreAuthorize(AUTHENTICATED)
    @RequestMapping(path = "/chat/{chatId}", method = RequestMethod.POST)
    @ResponseBody
    void createConversation(@PathVariable Long chatId, Principal principal) {
        chatService.initChat(chatId, principal.getName());
    }
}

