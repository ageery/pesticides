// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.domain;

import com.windsorsolutions.pesticides.domain.PesticideApplicationEvent;
import com.windsorsolutions.pesticides.domain.PesticideApplicationUnit;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect PesticideApplicationUnit_Roo_DbManaged {
    
    @OneToMany(mappedBy = "unitId")
    private Set<PesticideApplicationEvent> PesticideApplicationUnit.pesticideApplicationEvents;
    
    @Column(name = "name", length = 31)
    @NotNull
    private String PesticideApplicationUnit.name;
    
    public Set<PesticideApplicationEvent> PesticideApplicationUnit.getPesticideApplicationEvents() {
        return pesticideApplicationEvents;
    }
    
    public void PesticideApplicationUnit.setPesticideApplicationEvents(Set<PesticideApplicationEvent> pesticideApplicationEvents) {
        this.pesticideApplicationEvents = pesticideApplicationEvents;
    }
    
    public String PesticideApplicationUnit.getName() {
        return name;
    }
    
    public void PesticideApplicationUnit.setName(String name) {
        this.name = name;
    }
    
}
