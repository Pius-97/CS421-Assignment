package com.nkika.cs421assignment.utils;

import org.springframework.stereotype.Component;

@Component
public class ResponseCode {
    public final String SUCCESS = "Operation completed successfully";
    public final String NOT_FOUND = "Requested resource not found";
    public final String VALIDATION_ERROR = "Validation error occurred";
    public final String DUPLICATE_ENTRY = "Duplicate entry detected";
    // Add more response codes as needed
}