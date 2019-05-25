package com.codedoor.codenchill.rest_repository

import com.codedoor.codenchill.model.Decision
import com.codedoor.codenchill.model.ProgrammingLanguage
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@Repository
interface ProgrammingLanguageRepository: CrudRepository<ProgrammingLanguage, Long> {
    /***/
    @Query("SELECT language FROM ProgrammingLanguage language")
    fun getAllProgrammingLanguages(): List<ProgrammingLanguage>
}