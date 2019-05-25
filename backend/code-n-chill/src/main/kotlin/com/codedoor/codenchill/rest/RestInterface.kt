package com.codedoor.codenchill.rest

import com.codedoor.codenchill.model.Node
import com.codedoor.codenchill.rest_repository.NodeRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import java.util.*
import java.util.logging.Logger

@RestController
@RequestMapping("/nodes")
class RestInterface {

    @Autowired
    private val logger: Logger?= null

    @Autowired
    private val repository : NodeRepository? = null

    @GetMapping
    fun entryPoint() : CurrentNode{

        return getNode(repository!!.getRootNode().id.toString())
    }

    @GetMapping("/{id}")
    fun getNode(@PathVariable id: String ): CurrentNode {
        val uuid = UUID.fromString(id)
        val (node, children) = accesDB(uuid)
        return parseDBEntry(uuid, node, children)
    }


    fun accesDB(id : UUID) : Pair<Node, List<Node>> {
        val currentNode = this.repository!!.findById(id)
        val children = this.repository.getChildNodes(id)
        return Pair(currentNode, children)
    }

    fun parseDBEntry(currentID : UUID, node: Node, childNodes: List<Node>) :CurrentNode{
        val children = childNodes.map { child -> Children(child.id, child.content) }
        val parsedNode = CurrentNode(currentID, node.content, node.iconUrl, children)
        return parsedNode
    }

}