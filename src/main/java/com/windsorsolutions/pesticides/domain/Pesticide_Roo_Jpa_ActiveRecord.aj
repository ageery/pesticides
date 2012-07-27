// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.domain;

import com.windsorsolutions.pesticides.domain.Pesticide;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Pesticide_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Pesticide.entityManager;
    
    public static final EntityManager Pesticide.entityManager() {
        EntityManager em = new Pesticide().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Pesticide.countPesticides() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Pesticide o", Long.class).getSingleResult();
    }
    
    public static List<Pesticide> Pesticide.findAllPesticides() {
        return entityManager().createQuery("SELECT o FROM Pesticide o", Pesticide.class).getResultList();
    }
    
    public static Pesticide Pesticide.findPesticide(Integer id) {
        if (id == null) return null;
        return entityManager().find(Pesticide.class, id);
    }
    
    public static List<Pesticide> Pesticide.findPesticideEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Pesticide o", Pesticide.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Pesticide.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Pesticide.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Pesticide attached = Pesticide.findPesticide(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Pesticide.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Pesticide.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Pesticide Pesticide.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Pesticide merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
