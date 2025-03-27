package com.nkika.cs421assignment.repositories;


import com.nkika.cs421assignment.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
    boolean existsByEmail(String email);
    boolean existsByRegistrationNumber(String registrationNumber);
}