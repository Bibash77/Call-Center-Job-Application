package com.customercrud.customerfeedback.controllers;

import com.customercrud.customerfeedback.coreclass.UserConst;
import com.customercrud.customerfeedback.entity.FeedBack;
import com.customercrud.customerfeedback.entity.User;
import com.customercrud.customerfeedback.service.feedback.FeedbackService;
import com.customercrud.customerfeedback.service.user.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.Map;
import java.util.Objects;

@RestController
@RequestMapping("/feedback")
public class FeedbackController {
    @Autowired // object injection
    private FeedbackService feedbackService;

    @Autowired
    private UserService userService;

    private ObjectMapper objectMapper = new ObjectMapper();

    @PostMapping("/save/{id}")
    public ResponseEntity<?> saveFeedback(@RequestBody FeedBack feedback,
        @PathVariable String id) {
        try {
            User user = userService.findById(Integer.parseInt(id));
            FeedBack savefeedBackData = new FeedBack();
            Double percentObtain = feedback.getTotalPoint()/ UserConst.FULL_MARK * 100;
            savefeedBackData.setTotalPercentage(percentObtain);
            savefeedBackData.setRatingData(feedback.getRatingData());
            savefeedBackData.setId(Integer.parseInt(id));
            savefeedBackData.setSubbmittedAt(LocalDate.now());
            savefeedBackData.setTotalPoint(feedback.getTotalPoint());

            user.setFeedBack(feedbackService.addFeedBack(savefeedBackData));
            userService.addUser(user);

        } catch (Exception exception){
            return ResponseEntity.badRequest().body("unable to save your data !!");
        }
        return ResponseEntity.ok().body("succesfully submitted your feedback !!");
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getAnswers(@PathVariable String id) {
        User user = userService.findById(Integer.valueOf(id));
        if(user == null){
            ResponseEntity.status(200).body(null);
        }
        return ResponseEntity.status(200).body(Objects.requireNonNull(user).getFeedBack().getRatingData());
    }

    static boolean isInt(String s)
    {
        try
        { int i = Integer.parseInt(s); return true; }

        catch(NumberFormatException er)
        { return false; }
    }
}
