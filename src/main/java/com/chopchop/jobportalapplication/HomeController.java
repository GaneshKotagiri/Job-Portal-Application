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
        System.out.println("this is the addJob method");
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
//
//        // Create a new job object and set its properties
//        myJob job = new myJob();
//        job.setRole(role);
//        job.setCompanyName(companyName);
//        job.setJobDescription(jobDescription);
//        job.setMinRequirements(minRequirements);
//
//        // Add the job object to the model to pass it to the JSP page
//        model.addAttribute("job", job);
//
//        // Forward to the submitted.jsp page
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
    @GetMapping("/searchJobs")
    public String searchJob(@RequestParam("keyword") String keyword, Model model) {
        // Fetch the jobs matching the search keyword from the service
        List<myJob> searchResults = service.searchJobs(keyword);
        // Add the search results to the model
        model.addAttribute("jobPost", searchResults);
        System.out.println("this is the search method in the controller");
        // Return the search results view
        return "searchJobs";
    }




}
