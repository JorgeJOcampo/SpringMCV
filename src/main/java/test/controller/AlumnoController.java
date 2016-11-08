package test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import test.model.User;

@Controller
public class AlumnoController {

    @GetMapping
    public String usuario(ModelMap model, @ModelAttribute User user){
        model.addAttribute("title", "Spring MVC");
        model.addAttribute(new Alumno(user.getUser(), 0));
        return "alumno";
    }
}
