package test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import test.model.User;

@Controller
public class LoginController {

    @GetMapping("/")
    public String login(ModelMap model){
        User user = new User();
        model.addAttribute(user);
        return "/login.tiles";
    }

    @PostMapping("/user")
    public String usuario(ModelMap model, @ModelAttribute User user, @ModelAttribute String title){
        model.addAttribute("user", user);
        model.addAttribute("title", title);
        return "/welcome.tiles";
    }
}
