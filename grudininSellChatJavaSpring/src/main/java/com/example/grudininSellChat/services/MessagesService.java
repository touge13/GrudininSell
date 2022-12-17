package com.example.grudininSellChat.services;

import com.example.grudininSellChat.models.Message;
import com.example.grudininSellChat.repositories.MessagesRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

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

        System.out.println(message.getSenderName());
        messagesRepository.save(message);
    }
}
