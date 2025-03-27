package com.nkika.cs421assignment.controllers;


import com.nkika.cs421assignment.payloads.responses.StudentResponse;
import com.nkika.cs421assignment.services.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/students")
@RequiredArgsConstructor
public class StudentController {

    private final StudentService studentService;

    @GetMapping("/get-all-students")
    public ResponseEntity<StudentResponse> getAllStudents() {
        StudentResponse response = studentService.getAllStudents();
        return ResponseEntity.ok(response);
    }
}