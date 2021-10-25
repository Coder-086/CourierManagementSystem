package com.example.Hello.repository;

import com.example.Hello.model.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ContactDAO {
    @Autowired
    private JdbcTemplate jdbcTemplate;


}
