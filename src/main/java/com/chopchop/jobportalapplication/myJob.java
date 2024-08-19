package com.chopchop.jobportalapplication;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class myJob {
    private String role;
    private String companyName;
    private String location;
    private String jobDescription;
    private String minRequirements;

}
