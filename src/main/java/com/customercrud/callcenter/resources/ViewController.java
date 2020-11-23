package com.customercrud.callcenter.resources;

import com.customercrud.callcenter.core.UserType;
import com.customercrud.callcenter.entity.User;
import com.customercrud.callcenter.services.questionAnswer.QuestionAnswerService;
import com.customercrud.callcenter.services.user.UserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ViewController {
    @Autowired
    private UserService userService;

    @Autowired
    private QuestionAnswerService questionAnswerService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap model) {
        return "index";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username , @RequestParam String password , ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        // todo find user type and return view according to it
        User user = userService.findByUserName(username);
        if (user == null) {
            modelMap.put("error" , "user not found");
            return "index";
        }
        if(!user.getPasword().equals(password)){
            modelMap.put("error" , "Incorrect Password!!");
            return "index";
        }
        modelMap.put("user" , user);
        Cookie name = new Cookie("username",user.getUserName());
        Cookie userId = new Cookie("userId",user.getId().toString());
        Cookie userType = new Cookie("userType",user.getUserType().toString());
        response.addCookie(name);
        response.addCookie(userId);
        response.addCookie(userType);
        return "dashboard";
    }

    @GetMapping("/questionAnswer")
    public String loadQuestionAnswer(){
        return "questionAnswer";
    }

    @GetMapping("/questionAnswer-list")
    public String loadQuestionAnswerList(ModelMap modelMap){
        List<User> users = userService.findUserByUserType(UserType.USER); // only client user can give questionAnswer
        modelMap.put("users" , users);
        return "questionAnswer-list";
    }

    @GetMapping("/question-answer/{id}")
    public String loadQuestionAnswerIndividual(@PathVariable String id, ModelMap modelMap) throws IOException {
        User user = userService.findById(Integer.valueOf(id));
        Object correctAnswers = new ObjectMapper().readValue(user.getQuestionAnswer().getRatingData() , Object.class);
        modelMap.put("user" , user);
        modelMap.put("correctAnswers" , correctAnswers);
        return "individual-questionAnswer";
    }
    @GetMapping("/summary")
    public String loadQuestionAnswerList(){
        return "summary";
    }

    @GetMapping("/logout")
    public String logout(HttpServletResponse response) {
        // clear cookie data
        Cookie name = new Cookie("username",null);
        Cookie userId = new Cookie("userId",null);
        Cookie userType = new Cookie("userType",null);
        response.addCookie(name);
        response.addCookie(userId);
        response.addCookie(userType);
        return "index";
    }


    @GetMapping("/home")
    public String home(HttpServletRequest httpServletRequest , ModelMap modelMap) {
        Map<String, Cookie> cookieMap = new HashMap<>();
        for (Cookie cookie : httpServletRequest.getCookies()) {
            if (!ObjectUtils.isEmpty(cookie.getValue())) {
                cookieMap.put(cookie.getName(), cookie);
            }
        }
        if (!cookieMap.containsKey("userId")) { // check if the user has been logged in and cookie is being stored
            return "index";
        }
        return "dashboard";
    }
}
