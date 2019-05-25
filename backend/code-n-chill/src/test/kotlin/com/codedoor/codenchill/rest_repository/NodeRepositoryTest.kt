package com.codedoor.codenchill.rest_repository

import com.codedoor.codenchill.model.Node
import org.junit.Test
import org.junit.runner.RunWith
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.test.context.junit4.SpringRunner
import java.util.*
import javax.persistence.EntityManager
import javax.persistence.TypedQuery

@RunWith(SpringRunner::class)
@SpringBootTest
class NodeRepositoryTest {

    @Autowired
    val repository: NodeRepository? = null

    @Test
    fun getChildNodes() {
        var nodes = repository!!.getAllNodes()
        assert(nodes.isNotEmpty())

        nodes = repository!!.getChildNodes(nodes[0].id)
        assert(nodes.size == 6)
    }

    @Test
    fun getParentNodes(){
        var nodes = repository!!.getAllNodes()
        assert(nodes.isNotEmpty())

        nodes = repository!!.getChildNodes(nodes.get(0).id)
        assert(nodes.size == 6)

        for(node in nodes){
            var parentNodes = repository!!.getParentNodes(node.id)
            assert(parentNodes.size == 1)
            assert(parentNodes[0].content == "Why do you want to learn programming?")
        }
    }

    @Test
    fun getRootNode(){
        var node = repository!!.getRootNode()
        assert(node.content == "Why do you want to learn programming?")
    }
}