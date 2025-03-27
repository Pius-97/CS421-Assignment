package com.nkika.cs421assignment.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name = "subjects")
@NoArgsConstructor
@AllArgsConstructor

public class Subject extends BaseEntity {

    @Column(nullable = false, unique = true)
    private String code;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, columnDefinition = "TEXT")
    private String description;

    @Column(nullable = false)
    private int creditHours;

    @Column(nullable = false)
    private int academicYear;

    @Column(nullable = false)
    private int semester;

    @Column(nullable = false)
    private String program;

    @Column(nullable = false)
    private boolean isCore;

    @Column(nullable = false)
    private boolean hasPrerequisite;

    private String prerequisiteCode;

    public boolean hasPrerequisite() {
        return false;
    }
}