package com.chopchop.jobportalapplication.service;

import com.chopchop.jobportalapplication.model.myJob;
import com.chopchop.jobportalapplication.repository.jobRepo;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;


@Service
public class jobService {

    @Autowired
    private jobRepo repo;

//   @Getter
//   private long id=100;

    public void addJob(myJob job){
//        id++;
        repo.save(job);
    }
    public List<myJob> getAllJob(){
        return repo.findAll();
    }

    public List<myJob> searchJob(String keyword){
//        System.out.println("this is the method in service class"+role);
        return repo.findByRoleContainingOrLocationContaining(keyword,keyword);
    }

}
