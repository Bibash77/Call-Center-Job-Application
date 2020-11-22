package com.customercrud.callCenter.repository;

import com.customercrud.callCenter.entity.QuestionAnswer;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionAnswerRepository extends JpaRepository<QuestionAnswer, Integer> {
}
