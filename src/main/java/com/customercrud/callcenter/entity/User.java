package com.customercrud.callcenter.entity;

import com.customercrud.callcenter.core.UserType;
import com.sun.istack.internal.NotNull;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;

    @NotNull
    private String fullName;

    @NotNull
    private String userName;

    @NotNull
    private String pasword;

    @NotNull
    private String gender;

    @NotNull
    private String email;

    @NotNull
    private String phoneNumber;

    @NotNull
    private UserType userType;

    @OneToOne
    private QuestionAnswer questionAnswer;
}
