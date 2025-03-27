package com.nkika.cs421assignment.payloads.requests;

import com.nkika.cs421assignment.models.Student;
import lombok.Data;
import java.time.LocalDate;

@Data
public class StudentRequest {
    private String firstName;
    private String lastName;
    private String email;
    private String phoneNumber;
    private LocalDate dateOfBirth;
    private Student.Gender gender;
    private String nationality;
    private String enrolledProgram;
    private int currentYear;
    private int currentSemester;
}