package com.customercrud.callcenter.services.questionAnswer;

import com.customercrud.callcenter.entity.QuestionAnswer;

import java.util.List;

public interface QuestionAnswerService {
    List<QuestionAnswer> getAllQuestionAnswer();
    QuestionAnswer findById(Integer id);
    QuestionAnswer addQuestionAnswer(QuestionAnswer questionAnswer);
    void updateQuestionAnswer(QuestionAnswer questionAnswer);
    void deleteQuestionAnswer(Integer id);
}
