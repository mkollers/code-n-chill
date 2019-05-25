package com.codedoor.codenchill.model

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

@Entity
@Table(name = "question")
class Question {
    @Id
    @Column(name = "p_title")
    var title: String = ""

    constructor(title: String){
        this.title = title
    }
}