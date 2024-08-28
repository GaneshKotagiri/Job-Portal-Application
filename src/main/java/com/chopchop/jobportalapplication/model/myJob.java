package com.chopchop.jobportalapplication.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
    private long id;
    private String role;
    private String companyName;
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String location;
    private String jobDescription;
    private String minRequirements;

}
