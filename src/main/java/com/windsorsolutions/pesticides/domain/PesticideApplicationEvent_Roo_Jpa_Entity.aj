// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.domain;

import com.windsorsolutions.pesticides.domain.PesticideApplicationEvent;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect PesticideApplicationEvent_Roo_Jpa_Entity {
    
    declare @type: PesticideApplicationEvent: @Entity;
    
    declare @type: PesticideApplicationEvent: @Table(schema = "public", name = "pesticide_application_event");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer PesticideApplicationEvent.id;
    
    public Integer PesticideApplicationEvent.getId() {
        return this.id;
    }
    
    public void PesticideApplicationEvent.setId(Integer id) {
        this.id = id;
    }
    
}
