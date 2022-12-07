package com.involveininnovation.chat.services;

import com.involveininnovation.chat.models.Message;
import com.involveininnovation.chat.repositories.MessagesRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class MessagesService {
    private final MessagesRepository messagesRepository;

    public List<Message> listMessages(String senderName, String receiverName) {
        return messagesRepository.findBySenderNameAndReceiverName (senderName, receiverName);
    }

    public void saveMessage(Message message) {
        messagesRepository.save(message);
    }
}
