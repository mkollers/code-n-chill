package com.codedoor.codenchill.model

import javax.persistence.Entity
import javax.persistence.OneToOne
import javax.persistence.Table

@Entity
@Table(name = "edge")
class Edge {

    
    @OneToOne
    var previousNode: Node? = null

    @OneToOne
    var nextNode: Node? = null

    constructor(previousNode: Node, nextNode: Node){
        this.previousNode = previousNode
        this.nextNode = nextNode
    }
}