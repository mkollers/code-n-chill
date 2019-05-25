package com.codedoor.codenchill.rest_repository

import com.codedoor.codenchill.model.Node
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository

@Repository
interface NodeRepository : CrudRepository<Node, Long> {
    /***/
    @Query("SELECT node FROM Node node")
    fun getAllDecisions(): List<Node>
}