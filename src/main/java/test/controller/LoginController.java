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
        return "login";
    }

    @PostMapping("/")
    public String usuario(ModelMap model, @ModelAttribute Usuario user){
        model.addAttribute("user", user);
        return "hello";
    }
}
