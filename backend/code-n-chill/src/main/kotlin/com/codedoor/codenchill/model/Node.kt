package com.codedoor.codenchill.model

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

@Entity
@Table(name = "node")
class Node {
    @Id
    @Column(name = "p_id")
    var id: Int = 0

    @Column(name = "fk_parent")
    var parent: Node

    @Column(name = "content")
    var content: String = ""

    @Column(name = "iconUrl")
    var iconUrl: String = ""

    constructor(id: Int, parent: Node, content: String, iconUrl: String){
        this.id = id
        this.parent = parent
        this.content = content
        this.iconUrl = iconUrl
    }
}