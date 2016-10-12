package test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import test.model.Usuario;

@Controller
public class LoginController {

    @GetMapping("/")
    public String login(ModelMap model){
        Usuario user = new Usuario();
        model.addAttribute(user);
        model.addAttribute("title", "Spring MVC");
        return "login";
    }

    @PostMapping("/user")
    public String usuario(ModelMap model, @ModelAttribute Usuario user, @ModelAttribute String title){
        model.addAttribute("user", user);
        model.addAttribute("title", "Spring MVC");
        return "hello";
    }
}
