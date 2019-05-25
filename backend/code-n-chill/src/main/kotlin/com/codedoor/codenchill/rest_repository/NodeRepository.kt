package com.codedoor.codenchill.rest_repository

import com.codedoor.codenchill.model.Edge
import com.codedoor.codenchill.model.Node
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import org.springframework.stereotype.Repository
import java.util.*

@Repository
interface NodeRepository : CrudRepository<Node, Long> {
    /*
     * Get a list of all nodes
     * */
    @Query(value = "SELECT node FROM Node node")
    fun getAllNodes(): List<Node>

    /*
     * Get a node by a given UUID
     * */
    @Override
    @Query(value = "SELECT node FROM Node node WHERE node.id = ?1")
    fun findById(id: UUID): Node

    /*
    * Get a list of child nodes for a given UUID. Only gets the direct children
    * */
    @Query(value = "SELECT cn FROM Node node INNER JOIN Edge edge ON edge.primaryKey.previousNode = node.id " +
            "INNER JOIN Node cn ON cn.id = edge.primaryKey.nextNode WHERE node.id = ?1")
    fun getChildNodes(id: UUID): List<Node>

    /*
    * Get a list of parent nodes for a given UUID. Only gets the direct parents
    * */
    @Query(value = "SELECT cn FROM Node node INNER JOIN Edge edge ON edge.primaryKey.nextNode = node.id " +
            "INNER JOIN Node cn ON cn.id = edge.primaryKey.previousNode WHERE node.id = ?1")
    fun getParentNodes(id: UUID): List<Node>

    /*
    * Get the root node of the application
    * */
    @Query(value = "SELECT * FROM node n LEFT JOIN edge e ON e.fk_next_node = n.pk_id WHERE e.fk_next_node IS NULL", nativeQuery = true)
    fun getRootNode(): Node
}