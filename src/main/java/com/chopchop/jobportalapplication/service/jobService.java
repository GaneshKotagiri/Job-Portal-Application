package com.chopchop.jobportalapplication.service;

import com.chopchop.jobportalapplication.model.myJob;
import com.chopchop.jobportalapplication.repository.jobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class jobService {

    @Autowired
    private jobRepo repo;
    public void addJob(myJob job){
        repo.addJob(job);
    }
    public List<myJob> getAllJob(){
        return repo.getAllJob();
    }

//    public List<myJob> searchJobs(String keyword) {
//        List<myJob> allJobs = getAllJob();
//        return allJobs.stream()
//                .filter(job -> job.getRole().toLowerCase().contains(keyword.toLowerCase()) ||
//                        job.getCompanyName().toLowerCase().contains(keyword.toLowerCase()) ||
//                        job.getLocation().toLowerCase().contains(keyword.toLowerCase()))
//                .collect(Collectors.toList());
//    }
    public List<myJob> searchJob(String role, String location){
//        System.out.println("this is the method in service class"+role);
        return repo.searchJob(role,location);
    }

}
