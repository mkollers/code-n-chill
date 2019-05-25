package com.codedoor.codenchill.model

import javax.persistence.EmbeddedId
import javax.persistence.Entity
import javax.persistence.OneToOne
import javax.persistence.Table

@Entity
@Table(name = "edge")
class Edge {

    @EmbeddedId
    var primaryKey: EdgePk? = null

    constructor(primaryKey: EdgePk){
        this.primaryKey = primaryKey
    }
}