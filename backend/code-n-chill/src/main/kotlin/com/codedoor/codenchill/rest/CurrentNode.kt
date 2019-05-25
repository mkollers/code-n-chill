package com.codedoor.codenchill.rest

import java.util.*

class CurrentNode {

    var id: UUID?
    var content: String?
    var iconUrl: String?
    var answers: List<Children>?

    constructor(id: UUID?, content: String?, iconUrl: String?, answers: List<Children>?){
        this.id = id
        this.content = content
        this.iconUrl = iconUrl
        this.answers = answers
    }
}