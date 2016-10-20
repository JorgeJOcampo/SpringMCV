package test.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import test.model.User;

@Component
public class LoginValidator implements Validator{
    public boolean supports(Class<?> clazz) {
        return User.class.isAssignableFrom(clazz);
    }

    public void validate(Object obj, Errors errors) {
//        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id", "id.required");

//        User emp = (User) obj;
//        if(emp.getUser().equals("")){
//            errors.rejectValue("user", "negativeValue", new Object[]{"'user'"}, "user can't be negative");
//        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "user", "user.required");
    }
}
