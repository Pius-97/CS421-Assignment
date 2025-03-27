package com.nkika.cs421assignment.servicesImpl;


import com.nkika.cs421assignment.dtos.StudentDto;
import com.nkika.cs421assignment.models.Student;
import com.nkika.cs421assignment.payloads.requests.StudentRequest;
import com.nkika.cs421assignment.payloads.responses.StudentResponse;
import com.nkika.cs421assignment.repositories.StudentRepository;
import com.nkika.cs421assignment.services.StudentService;
import com.nkika.cs421assignment.utils.ResponseCode;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class StudentServiceImpl implements StudentService {

    private final StudentRepository studentRepository;
    private final ResponseCode responseCode;

    @Override
    public StudentResponse createStudent(StudentRequest request) {
        // Implementation for creating a student
        return null;
    }

    @Override
    public StudentResponse getAllStudents() {
        List<Student> students = studentRepository.findAll();

        List<StudentDto> studentDtos = students.stream()
                .map(student -> {
                    StudentDto dto = new StudentDto();
                    dto.setFullName(student.getFirstName() + " " + student.getLastName());
                    dto.setRegistrationNumber(student.getRegistrationNumber());
                    dto.setEnrolledProgram(student.getEnrolledProgram());
                    return dto;
                })
                .collect(Collectors.toList());

        return new StudentResponse(
                true,
                responseCode.SUCCESS,
                studentDtos
        );
    }
}