package com.nkika.cs421assignment.dtos;

import lombok.Data;


@Data
public class StudentDto {
    private String fullName;
    private String registrationNumber;
    private String enrolledProgram;
    // Other fields as needed
}