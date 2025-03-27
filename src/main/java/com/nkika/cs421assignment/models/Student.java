package com.nkika.cs421assignment.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "students")
@AllArgsConstructor
@NoArgsConstructor

public class Student extends BaseEntity {

    @Column(nullable = false)
    private String firstName;

    @Column(nullable = false)
    private String lastName;

    @Column(unique = true, nullable = false)
    private String registrationNumber;

    @Column(unique = true, nullable = false)
    private String email;

    @Column(nullable = false)
    private String phoneNumber;

    @Column(nullable = false)
    private LocalDate dateOfBirth;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Gender gender;

    @Column(nullable = false)
    private String nationality;

    @Column(nullable = false)
    private String enrolledProgram;

    @Column(nullable = false)
    private int currentYear;

    @Column(nullable = false)
    private int currentSemester;

    @Column(nullable = false)
    private LocalDate enrollmentDate;

    public enum Gender {
        MALE, FEMALE, OTHER
    }
}