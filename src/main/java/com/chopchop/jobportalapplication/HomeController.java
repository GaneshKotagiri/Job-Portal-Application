package com.chopchop.jobportalapplication;

import com.chopchop.jobportalapplication.model.myJob;
import com.chopchop.jobportalapplication.service.jobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private jobService service;
    @GetMapping({"/","home"})
    public String home(){
//        System.out.println("this is the new method");
        return "home";
    }
    @GetMapping("/addJob")
     public String addJob(){
//        System.out.println("this is the addJob method");
        return "addJob";
     }

//     #we can do the post method in two ways, one is by using httpservletrequest and model, other one is
//            by using another class and injected that into the method

//    @PostMapping("/submitted")
//    public String submit(HttpServletRequest request, Model model) {
//        // Retrieve the form data from the request parameters
//        String role = request.getParameter("role");
//        String companyName = request.getParameter("companyName");
//        String jobDescription = request.getParameter("jobDescription");
//        String minRequirements = request.getParameter("minRequirements");
//        myJob job = new myJob();
//        job.setRole(role);
//        job.setCompanyName(companyName);
//        job.setJobDescription(jobDescription);
//        job.setMinRequirements(minRequirements);
//        model.addAttribute("job", job);
//        return "submitted"; // This corresponds to your `submitted.jsp` page
//    }

    @PostMapping("/submitted")
    public String submitJob(@ModelAttribute("job") myJob job) {
        // The "job" object will automatically be populated with form data
        // and will be passed to the view (JSP page)
        service.addJob(job);
        // Forward to the submitted.jsp page
        return "submitted"; // This corresponds to your `submitted.jsp` page
    }

    @GetMapping("/viewJobs")
    public String viewAllJobs(Model model) {
        List<myJob> jobs = service.getAllJob();

        model.addAttribute("jobPost", jobs);

        return "viewJobs";
    }
//    @GetMapping("/searchJobs")
//    public String searchJobs(@RequestParam("keyword") String keyword, Model model) {
//        List<myJob> searchedJobs = service.searchJobsByKeyword(keyword);
//        model.addAttribute("jobPost", searchedJobs);
//        model.addAttribute("keyword", keyword);
//
//        return "searchJobs";
//    }


    @GetMapping("/search")
    public String searchJobs( ){
//        service.searchJob(role);
        return "search";
    }
//
//    @GetMapping("/searchHome")
//    public String searchJobs(@RequestParam("role") String role,@RequestParam("location") String location, Model model) {
//        List<myJob> searchResults = service.searchJob(role, location);
//        model.addAttribute("jobPost", searchResults);
//        model.addAttribute("role", role);
//        model.addAttribute("location",location);
//        System.out.println("this is a method in search home");
//        return "searchHome";
//    }
    @GetMapping("/searchHome")
    public String searchHome(@RequestParam String role,@RequestParam String location, Model model){
        List<myJob> jobs = service.searchJob(role, location);
        model.addAttribute("jobPost", jobs);
//        System.out.println("this is the method in the search"+jobs);
        return "searchHome";
    }

    @GetMapping("/applied")
    public String applied(){
        return "applied";
    }
}
