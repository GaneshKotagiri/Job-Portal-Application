package com.chopchop.jobportalapplication.repository;

import com.chopchop.jobportalapplication.model.myJob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class jobRepo {
    @Autowired
    private myJob jobSearch;

    List<myJob> Job= new ArrayList<>();

    public List<myJob> getAllJob(){
        return Job;
    }

    public void addJob(myJob job){
        Job.add(job);
        System.out.println(Job);
    }

    public List<myJob> searchJob(String role, String location) {

//        for(myJob job1:Job){
//            if(job1.getRole() == role){
//                job1.setRole(jobSearch.getRole());
//                job1.setCompanyName(jobSearch.getCompanyName());
//                job1.setLocation(jobSearch.getLocation());
//                job1.setJobDescription(jobSearch.getJobDescription());
//                job1.setMinRequirements(jobSearch.getMinRequirements());
////                return Job;
//            }
//        }
//        return null;
            List<myJob> matchingJobs = new ArrayList<>();

            // Iterate through the job list and find jobs matching the role
            for (myJob job : Job) {
                if (job.getRole().equals(role) || job.getLocation().equals(location)) {
                    matchingJobs.add(job);
                }
            }
//        System.out.println("this is the method in the repository!"+location);

            // Return the matching jobs or an empty list if none found
            return matchingJobs;

    }
}
