package com.codedoor.codenchill.rest_repository

import com.codedoor.codenchill.model.Node
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository
import java.util.*

@Repository
interface NodeRepository : CrudRepository<Node, Long> {
    /***/
    @Query(value = "SELECT node FROM Node node")
    fun getAllNodes(): List<Node>

    @Override
    @Query(value = "SELECT node FROM Node node WHERE node.id = ?1")
    fun findById(id: UUID): Node

    @Query(value = "SELECT cn FROM Node node INNER JOIN Edge edge ON edge.primaryKey.previousNode = node.id " +
            "INNER JOIN Node cn ON cn.id = edge.primaryKey.nextNode WHERE node.id = ?1")
    fun getChildNodes(id: UUID): List<Node>

    @Query(value = "SELECT cn FROM Node node INNER JOIN Edge edge ON edge.primaryKey.nextNode = node.id " +
            "INNER JOIN Node cn ON cn.id = edge.primaryKey.previousNode WHERE node.id = ?1")
    fun getParentNodes(id: UUID): List<Node>

    @Query(value = "SELECT node FROM Node node INNER JOIN Edge edge ON edge.primaryKey.previousNode = node.id " +
            "INNER JOIN Node cn ON cn.id = edge.primaryKey.nextNode WHERE edge.primaryKey.previousNode = edge.primaryKey.nextNode")
    fun getRootNode(): Node
}