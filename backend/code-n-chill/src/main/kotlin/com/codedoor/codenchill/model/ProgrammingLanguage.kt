package com.codedoor.codenchill.model

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

@Entity
@Table(name = "programminglanguages")
class ProgrammingLanguage{
    @Id
    @Column(name = "p_name")
    var name: String = ""

    constructor(name: String){
        this.name = name
    }
}