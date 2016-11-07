package com.softserve.edu.delivery.service.social.dto;

import com.softserve.edu.delivery.domain.Role;
import com.softserve.edu.delivery.domain.User;

public class SocialUserDTO {

    private String id;

    private String email;

    private String firstName;

    private String lastName;

    private String phone;

    private String photoUrl;


    public void setId(String id) {
        this.id = id;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }

    public String getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getPhone() {
        return phone;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }


    public static User getUser(SocialUserDTO socialUser) {
        User newUser = new User();
        newUser.setEmail(socialUser.getEmail());
        newUser.setFirstName(socialUser.getFirstName());
        newUser.setLastName(socialUser.getLastName());
        newUser.setPhone(socialUser.getPhone());
        newUser.setPhotoUrl(socialUser.getPhotoUrl());
        newUser.setUserRole(Role.CUSTOMER);
        newUser.setApproved(true);

        return newUser;
    }
}