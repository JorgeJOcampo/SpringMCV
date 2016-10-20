package test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import test.model.User;
import test.validator.LoginValidator;

import javax.validation.Valid;

@Controller
public class LoginController {

    @Autowired
    LoginValidator validator;

    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }

    @GetMapping("/")
    public String login(ModelMap model){
        User user = new User();
        model.addAttribute(user);
        return "login";
    }

    @PostMapping("/user")
    public String usuario(ModelMap model, @Valid @ModelAttribute User user, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "login";
        }
        model.addAttribute("user", user);
        model.addAttribute("title", "Spring MVC");
        return "hello";
    }

}
