package com.nkika.cs421assignment.services;


import com.nkika.cs421assignment.payloads.responses.SubjectResponse;

public interface SubjectService {
    SubjectResponse getSubjectsByProgram(String program);
}