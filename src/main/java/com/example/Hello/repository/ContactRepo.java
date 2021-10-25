package com.example.Hello.repository;

import com.example.Hello.model.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactRepo extends JpaRepository<Contact, String> {

}
