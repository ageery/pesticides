// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.domain;

import com.windsorsolutions.pesticides.domain.Applicator;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Applicator_Roo_Jpa_Entity {
    
    declare @type: Applicator: @Entity;
    
    declare @type: Applicator: @Table(schema = "public", name = "applicator");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Applicator.id;
    
    public Integer Applicator.getId() {
        return this.id;
    }
    
    public void Applicator.setId(Integer id) {
        this.id = id;
    }
    
}
