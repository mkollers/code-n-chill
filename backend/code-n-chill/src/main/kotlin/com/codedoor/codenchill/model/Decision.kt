package com.codedoor.codenchill.model

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

@Entity
@Table(name = "decision")
class Decision {
    @Id
    @Column(name = "p_title")
    var title: String = ""

    @Column(name = "text")
    var text: String = ""

    constructor(title: String, text: String){
        this.title = title
        this.text = text
    }
}