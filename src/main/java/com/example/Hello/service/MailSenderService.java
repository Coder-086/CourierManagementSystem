package com.example.Hello.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailSenderService {

    @Autowired
    private JavaMailSender javaMailSender;

    public void sendmail(String to, String body, String topic) {
        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
        simpleMailMessage.setFrom("courier7896@gmail.com");
        simpleMailMessage.setTo(to);
        simpleMailMessage.setSubject(topic);
        simpleMailMessage.setText(body);

        javaMailSender.send(simpleMailMessage);
    }
}
