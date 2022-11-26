package com.involveininnovation.chat.models;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "chat")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    @Column(name = "senderName")
    private String senderName;

    @Column(name = "receiverName")
    private String receiverName;

    @Column(name = "message")
    private String message;

    @Column(name = "date")
    private String date;

    @Column(name = "status")
    private Status status;


}
