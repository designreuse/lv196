package com.softserve.edu.delivery.controller;

import com.softserve.edu.delivery.dto.*;
import com.softserve.edu.delivery.service.UserAuthenticationDetails;
import com.softserve.edu.delivery.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.security.Principal;

import static com.softserve.edu.delivery.config.SecurityConstraints.*;

@Controller
public class AuthController {

    @Autowired
    private UserService service;

    @Autowired
    private UserAuthenticationDetails authenticationDetails;

    private final Logger logger = LoggerFactory.getLogger(AuthController.class.getName());

    @GetMapping(value = "/welcome")
    public ModelAndView welcome() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("orderIdDto", new OrderIdDto());
        mv.setViewName("welcome");
        logger.info("Return welcome page");
        return mv;
    }

    @GetMapping(value = "/login")
    public ModelAndView signIn(@RequestParam(value = "auth", required = false) String auth,
                               @RequestParam(value = "logout", required = false) String logout){
        ModelAndView mv = new ModelAndView();
        if (auth != null && auth.equals("false")) {
            mv.addObject("wrong_login", "");
        } else if (logout != null) {
            mv.addObject("success_logout", "");
            logger.info("Logout");
        }
        mv.addObject("userAuthDto", new UserAuthDTO());
        mv.setViewName("login");

        logger.info("Return login page");
        return mv;
    }

    @PostMapping(value = "/loginProcess")
    public ModelAndView loginProcess(@ModelAttribute("userAuthDto") @Valid UserAuthDTO userAuthDTO,
                                     BindingResult result) {
        if (result.hasErrors()) {
            logger.error("Binding error, user: " + userAuthDTO.getEmail());
            return new ModelAndView("login", "userAuthDto", userAuthDTO);
        }
        logger.info("Return welcome page");
        return new ModelAndView("redirect:/welcome");
    }

    @GetMapping(value = "/authRedirect")
    public ModelAndView authRedirect() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName(roleRedirect());
        logger.info("Return redirecting page");
        return mv;
    }

    @GetMapping(value = "/registration")
    public ModelAndView registration() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("userRegistration", new UserRegistrationDTO());
        mv.setViewName("registration");
        logger.info("Return registration page");
        return mv;
    }

    @PostMapping(value = "/register")
    public ModelAndView reg(@ModelAttribute("userRegistration") @Valid UserRegistrationDTO userRegDTO,
                            BindingResult result, HttpServletRequest request) {
        if (result.hasErrors()) {
            logger.error("Registration binding process has errors, returning registration form back");
            ModelAndView mv = new ModelAndView("registration", "userRegistration", userRegDTO);
            mv.addObject("wrong_register", "Please fill correct registration form");
            return mv;
        } else {
            String url = request.getRequestURL().toString();
            service.register(userRegDTO, url);
            ModelAndView mv = new ModelAndView();
            mv.addObject("success_register", "");
            mv.addObject("userAuthDto", new UserAuthDTO());
            mv.setViewName("login");
            logger.info("Return login page");
            return mv;
        }
    }

    @GetMapping(value = "/register")
    public ModelAndView reg(@RequestParam("token") String token) {
        service.verifyRegistration(token);
        ModelAndView mv = new ModelAndView();
        mv.addObject("userAuthDto", new UserAuthDTO());
        mv.addObject("email_verified", "");
        mv.setViewName("login");
        logger.info("Email was verified. Return login page");
        return mv;
    }

    @RequestMapping(path = "/user/email", produces = "text/plain")
    @ResponseBody
    public String userEmail(Principal principal) {
        return principal.getName();
    }

    @PreAuthorize(AUTHENTICATED)
    @GetMapping(value = "role")
    public @ResponseBody StringResponse getRole() {
        String role = authenticationDetails.getAuthenticatedUserRole();
        logger.info("Return user role: " + role);
        return new StringResponse(role);
    }

    private String roleRedirect() {
        String role = this.authenticationDetails.getAuthenticatedUserRole();
        String redirect = "redirect:";
        switch (role) {
            case "Customer":
                return redirect += CUSTOMER_PAGE;
            case "Driver":
                return redirect += DRIVER_PAGE;
            case "Admin" :
                return redirect += ADMIN_PAGE;
            case "Moderator":
                return redirect += MODERATOR_PAGE;
            default:
                return redirect += WELCOME_PAGE;
        }
    }
}