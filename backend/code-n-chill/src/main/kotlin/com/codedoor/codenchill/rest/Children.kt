package com.codedoor.codenchill.rest

import java.util.*

class Children {

    var nextId: UUID? = null
    var text: String = ""

    constructor(nextId : UUID, text : String){
        this.nextId = nextId
        this.text = text
    }
}