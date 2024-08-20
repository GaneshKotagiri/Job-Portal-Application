package com.chopchop.jobportalapplication.repository;

import com.chopchop.jobportalapplication.model.myJob;

import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class jobRepo {

    List<myJob> Job= new ArrayList<>();

    public List<myJob> getAllJob(){
        return Job;
    }

    public void addJob(myJob job){
        Job.add(job);
        System.out.println(Job);
    }
}
