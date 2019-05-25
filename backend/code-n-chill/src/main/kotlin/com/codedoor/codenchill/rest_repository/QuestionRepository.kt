package com.codedoor.codenchill.rest_repository

import com.codedoor.codenchill.model.Question
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository

interface QuestionRepository : CrudRepository<Question, Long> {
    /***/
    @Query("SELECT question FROM Question question")
    fun getAllQuestions(): List<Question>
}