package com.codedoor.codenchill.model

import java.io.Serializable
import java.util.*
import javax.persistence.Column
import javax.persistence.Embeddable
import javax.persistence.OneToOne

@Embeddable
class EdgePk : Serializable {
    @Column(name = "fk_prev_node")
    var previousNode: UUID? = null

    @Column(name = "fk_next_node")
    var nextNode: UUID? = null
}