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
    @Column(unique = true)
    private long id;
    private String role;
    private String companyName;
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String location;
    private String jobDescription;
    private String minRequirements;

}
