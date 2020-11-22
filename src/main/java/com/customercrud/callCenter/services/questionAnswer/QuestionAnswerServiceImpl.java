package com.customercrud.callCenter.services.questionAnswer;

import com.customercrud.callCenter.entity.QuestionAnswer;
import com.customercrud.callCenter.repository.QuestionAnswerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionAnswerServiceImpl implements QuestionAnswerService{
    @Autowired
    private QuestionAnswerRepository questionAnswerRepository;

    @Override
    public List<QuestionAnswer> getAllQuestionAnswer() {
        return questionAnswerRepository.findAll();
    }

    @Override
    public QuestionAnswer findById(Integer id) {
        return questionAnswerRepository.findById(id).get();
    }

    @Override
    public QuestionAnswer addQuestionAnswer(QuestionAnswer questionAnswer) {
        return questionAnswerRepository.save(questionAnswer);
    }

    @Override
    public void updateQuestionAnswer(QuestionAnswer questionAnswer) {

    }

    @Override
    public void deleteQuestionAnswer(Integer id) {

    }
//
//    @Override
//    public List<QuestionAnswer> getAllFeedBack() {
//        return feedbackRepository.findAll();
//    }
//
//    @Override
//    public QuestionAnswer findById(Integer id) {
//        return feedbackRepository.findById(id).get();
//    }
//
//    @Override
//    public FeedBack addFeedBack(FeedBack feedBack) {
//       return feedbackRepository.save(feedBack);
//    }
//
//    @Override
//    public void updateFeedBack(FeedBack feedBack) {
//        feedbackRepository.save(feedBack);
//    }
//
//    @Override
//    public void deleteFeedBack(Integer id) {
//    }
}
