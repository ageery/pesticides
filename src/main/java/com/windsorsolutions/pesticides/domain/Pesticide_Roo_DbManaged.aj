// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.domain;

import com.windsorsolutions.pesticides.domain.Pesticide;
import com.windsorsolutions.pesticides.domain.PesticideApplicationEvent;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Pesticide_Roo_DbManaged {
    
    @OneToMany(mappedBy = "pesticideId")
    private Set<PesticideApplicationEvent> Pesticide.pesticideApplicationEvents;
    
    @Column(name = "name", length = 63)
    @NotNull
    private String Pesticide.name;
    
    @Column(name = "epa_reg_num", length = 31)
    @NotNull
    private String Pesticide.epaRegNum;
    
    @Column(name = "active")
    private Boolean Pesticide.active;
    
    public Set<PesticideApplicationEvent> Pesticide.getPesticideApplicationEvents() {
        return pesticideApplicationEvents;
    }
    
    public void Pesticide.setPesticideApplicationEvents(Set<PesticideApplicationEvent> pesticideApplicationEvents) {
        this.pesticideApplicationEvents = pesticideApplicationEvents;
    }
    
    public String Pesticide.getName() {
        return name;
    }
    
    public void Pesticide.setName(String name) {
        this.name = name;
    }
    
    public String Pesticide.getEpaRegNum() {
        return epaRegNum;
    }
    
    public void Pesticide.setEpaRegNum(String epaRegNum) {
        this.epaRegNum = epaRegNum;
    }
    
    public Boolean Pesticide.getActive() {
        return active;
    }
    
    public void Pesticide.setActive(Boolean active) {
        this.active = active;
    }
    
}
