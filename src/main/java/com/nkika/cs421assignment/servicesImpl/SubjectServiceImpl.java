package com.nkika.cs421assignment.servicesImpl;


import com.nkika.cs421assignment.dtos.SubjectDto;
import com.nkika.cs421assignment.models.Subject;
import com.nkika.cs421assignment.payloads.responses.SubjectResponse;
import com.nkika.cs421assignment.repositories.SubjectRepository;
import com.nkika.cs421assignment.services.SubjectService;
import com.nkika.cs421assignment.utils.ResponseCode;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class SubjectServiceImpl implements SubjectService {

    private final SubjectRepository subjectRepository;
    private final ResponseCode responseCode;

    @Override
    public SubjectResponse getSubjectsByProgram(String program) {
        log.info("Fetching subjects for program: {}", program);
        List<Subject> subjects = subjectRepository.findByProgramOrderByAcademicYearAscSemesterAsc(program);
        log.info("Found {} subjects", subjects.size());

        if (subjects.isEmpty()) {
            return new SubjectResponse(
                    false,
                    "No subjects found for program: " + program,
                    null
            );
        }

        // Debug: Print the first few subjects
        subjects.stream().limit(5).forEach(subject ->
                log.debug("Subject: {} - {} (Year {}, Semester {})",
                        subject.getCode(), subject.getName(),
                        subject.getAcademicYear(), subject.getSemester()));

        Map<String, Map<String, List<SubjectDto>>> curriculum = subjects.stream()
                .collect(Collectors.groupingBy(
                        subject -> "Year " + subject.getAcademicYear(),
                        Collectors.groupingBy(
                                subject -> "Semester " + subject.getSemester(),
                                Collectors.mapping(this::convertToDto, Collectors.toList())
                        )
                ));

        // Debug: Print the curriculum structure
        log.debug("Curriculum structure: {}", curriculum);

        return new SubjectResponse(
                true,
                "Subjects retrieved successfully",
                curriculum
        );
    }

    private SubjectDto convertToDto(Subject subject) {
        SubjectDto dto = new SubjectDto();
        dto.setCode(subject.getCode());
        dto.setName(subject.getName());
        dto.setDescription(subject.getDescription());
        dto.setCreditHours(subject.getCreditHours());
        dto.setCore(subject.isCore());
        if (subject.hasPrerequisite()) {
            dto.setPrerequisite(subject.getPrerequisiteCode());
        }
        return dto;
    }
}