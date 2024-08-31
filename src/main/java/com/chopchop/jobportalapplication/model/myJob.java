package com.chopchop.jobportalapplication.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
@Entity
public class myJob {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true,nullable = false)
    private long id;
    private String role;
    private String companyName;
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String location;
    private String jobDescription;
    private String minRequirements;

}
