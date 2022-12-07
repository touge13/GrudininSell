package com.involveininnovation.chat.repositories;

import java.util.List;
import com.involveininnovation.chat.models.Message;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MessagesRepository extends JpaRepository<Message, Long> {
    List<Message> findBySenderNameAndReceiverName(String senderName, String receiverName); // добавить productId
}