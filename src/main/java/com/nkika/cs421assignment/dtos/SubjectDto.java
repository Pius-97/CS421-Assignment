package com.nkika.cs421assignment.dtos;

import lombok.Data;

@Data
public class SubjectDto {
        private String code;
        private String name;
        private String description;
        private double creditHours;
        private boolean isCore;
        private String prerequisite;
}