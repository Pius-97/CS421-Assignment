package com.nkika.cs421assignment.controllers;


import com.nkika.cs421assignment.payloads.responses.SubjectResponse;
import com.nkika.cs421assignment.services.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/subjects")
@RequiredArgsConstructor
public class SubjectController {

    private final SubjectService subjectService;

    @GetMapping("/get-subjects-by-program")
    public ResponseEntity<SubjectResponse> getSubjectsByProgram(
            @RequestParam(defaultValue = "Software Engineering") String program) {
        SubjectResponse response = subjectService.getSubjectsByProgram(program);
        return ResponseEntity.ok(response);
    }
}