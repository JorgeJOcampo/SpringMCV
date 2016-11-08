package test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
    
    @RequestMapping(value = "/hello/{name:.+}", method = RequestMethod.GET)
    public ModelAndView hello(@PathVariable("name") String name) {
        ModelAndView model = new ModelAndView();
        model.setViewName("hello");
        model.addObject("msg", name);
        return model;
    }

    @PostMapping("/hellow")
    public String hellow(@ModelAttribute Alumno alumno, ModelMap model){
        model.addAttribute(alumno);
        return "alumno";
    }

}