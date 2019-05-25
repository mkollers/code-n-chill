package com.codedoor.codenchill.model

import java.util.*
import javax.persistence.*

@Entity
@Table(name = "node")
class Node {
    @Id
    @Column(name = "pk_id")
    var id: UUID

    @Column(name = "content")
    var content: String = ""

    @Column(name = "iconUrl")
    var iconUrl: String = ""

    constructor(id: UUID, content: String, iconUrl: String){
        this.id = id
        this.content = content
        this.iconUrl = iconUrl
    }
}