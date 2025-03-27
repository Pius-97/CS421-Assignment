package com.nkika.cs421assignment.services;


import com.nkika.cs421assignment.payloads.requests.StudentRequest;
import com.nkika.cs421assignment.payloads.responses.StudentResponse;

public interface StudentService {
    StudentResponse createStudent(StudentRequest request);
    StudentResponse getAllStudents();
}