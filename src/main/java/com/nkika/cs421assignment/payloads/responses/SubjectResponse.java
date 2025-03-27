package com.nkika.cs421assignment.payloads.responses;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.nkika.cs421assignment.dtos.SubjectDto;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Data
@EqualsAndHashCode(callSuper = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SubjectResponse extends ApiResponse {
    private Map<String, Map<String, List<SubjectDto>>> data; // Changed from 'curriculum' to 'data'

    public SubjectResponse(boolean success, String message,
                           Map<String, Map<String, List<SubjectDto>>> data) {
        super(success, message);
        this.data = data;
    }
}