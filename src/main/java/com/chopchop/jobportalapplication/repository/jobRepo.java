package com.chopchop.jobportalapplication.repository;

import com.chopchop.jobportalapplication.model.myJob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface jobRepo extends JpaRepository<myJob, String> {

    List<myJob> findByRole(String role);

}
//@Autowired
//private myJob jobSearch;
//
//List<myJob> Job= new ArrayList<>();
//
//public List<myJob> getAllJob(){
//    return Job;
//}
//
//public void addJob(myJob job){
//    Job.add(job);
//    System.out.println(Job);
//}
//
//public List<myJob> searchJob(String role, String location) {
//    List<myJob> matchingJobs = new ArrayList<>();
//
//    // Iterate through the job list and find jobs matching the role
//    for (myJob job : Job) {
//        if (job.getRole().equals(role) || job.getLocation().equals(location)) {
//            matchingJobs.add(job);
//        }
//    }
////        System.out.println("this is the method in the repository!"+location);
//
//    // Return the matching jobs or an empty list if none found
//    return matchingJobs;
//
//}
