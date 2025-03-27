package com.nkika.cs421assignment.payloads.responses;

import com.nkika.cs421assignment.dtos.StudentDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Map;

@EqualsAndHashCode(callSuper = true)
@Data
public class StudentResponse extends ApiResponse {
    private final List<StudentDto> students;

    public StudentResponse(boolean success, String message, List<StudentDto> students) {
        super(success, message);
        this.students = students;
    }
}

