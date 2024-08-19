package com.chopchop.jobportalapplication;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {
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

        // Forward to the submitted.jsp page
        return "submitted"; // This corresponds to your `submitted.jsp` page
    }

}
