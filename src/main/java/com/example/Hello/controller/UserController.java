package com.example.Hello.controller;

import com.example.Hello.dto.UserDTO;
import com.example.Hello.model.User;
import com.example.Hello.repository.UserRepo;
import com.example.Hello.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @Autowired
    UserRepo userRepo;

    @Autowired
    UserService userService;

    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public ResponseEntity signup(@RequestBody UserDTO userparam) throws Exception {
        User user = new User();
        user.setUsername(userparam.getUsername());
        user.setEmail(userparam.getEmail());
        user.setPassword(userparam.getPassword());
        user.setNumber(userparam.getNumber());
        if (!userService.isAccountExist(userparam)) {
            userService.saveUser(user);
            return new ResponseEntity<>(HttpStatus.OK);
        }

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("User Already Registered!!!");

    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResponseEntity login(@RequestBody UserDTO user) throws  InterruptedException{

        if (userService.isValidUser(user)) {

            return new ResponseEntity<>(HttpStatus.OK);
        }


        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @RequestMapping(value = "/sendotp", method = RequestMethod.POST)
    public ResponseEntity sendOtp(@RequestBody UserDTO userparam) throws Exception{
        System.out.println(">>>>>>>>" + userparam.getEmail());

        User user = new User();
        user.setEmail(userparam.getEmail());

        if(userService.isValidEmail(user)){
            userService.otpGenerator(user);
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
    }

    @RequestMapping(value = "/checkotp", method = RequestMethod.POST)
    public ResponseEntity checkOtp(@RequestBody UserDTO userparam) throws Exception{

        System.out.println("He>>>>>>>" + userparam.getEmail() + ">>" + userparam.getOtp());
        System.out.println("OTP is ::::::" + userparam.getOtp());
        User user = new User();

        user.setEmail(userparam.getEmail());
        int otp = userService.getOtp(user);
        System.out.println(otp);
        if(otp == userparam.getOtp()){
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
    }

    @RequestMapping(value = "/setpassword", method = RequestMethod.POST)
    public ResponseEntity setpassword(@RequestBody UserDTO userParam) throws Exception {

        System.out.println("Set>>>>>>>>" + userParam.getPassword() + ">>>>>>>>>>" + userParam.getEmail());

        User user = new User();

        user.setPassword(userParam.getPassword());
        user.setEmail(userParam.getEmail());

        userService.setPassword(user);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @RequestMapping(value = "/account", method = RequestMethod.POST)
    public ResponseEntity account(@RequestBody UserDTO userParam) throws Exception{
        System.out.println("Account>>>" + userParam.getUsername() + " " + userParam.getNumber() + " " + userParam.getAddress());

        User user = new User();

        user.setUsername(userParam.getUsername());
        user.setNumber(userParam.getNumber());
        user.setAddress(userParam.getAddress());
        user.setEmail(userParam.getEmail());

        userService.updateaccount(user);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @RequestMapping(value = "/checkpassword", method = RequestMethod.POST)
    public ResponseEntity passwordCheck(@RequestBody UserDTO userParam) throws Exception {
        System.out.println("Password :::::: " + userParam.getPassword() + "Email :: " + userParam.getEmail());

        User user = new User();

        user.setEmail(userParam.getEmail());
        user.setPassword(userParam.getPassword());

        int password = userService.checkpassword(user);

        int userPassword = Integer.parseInt(user.getPassword());
        System.out.println("USER ENTERED PASSWORD :::::" + userPassword + "PASSWORD ::: " + password);
        if(password == userPassword){
            return new ResponseEntity<>(HttpStatus.OK);
        }

        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @RequestMapping(value = "/updatepassword", method = RequestMethod.POST)
    public ResponseEntity updatedPassword(@RequestBody UserDTO userParam) throws Exception {
        System.out.println("Password :::::: " + userParam.getPassword() + "Email :: " + userParam.getEmail());

        User user = new User();

        user.setPassword(userParam.getPassword());
        user.setEmail(userParam.getEmail());

        userService.updatePassword(user);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
