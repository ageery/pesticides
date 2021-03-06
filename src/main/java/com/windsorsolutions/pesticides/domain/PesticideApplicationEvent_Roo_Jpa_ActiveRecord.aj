// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.domain;

import com.windsorsolutions.pesticides.domain.PesticideApplicationEvent;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PesticideApplicationEvent_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PesticideApplicationEvent.entityManager;
    
    public static final EntityManager PesticideApplicationEvent.entityManager() {
        EntityManager em = new PesticideApplicationEvent().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PesticideApplicationEvent.countPesticideApplicationEvents() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PesticideApplicationEvent o", Long.class).getSingleResult();
    }
    
    public static List<PesticideApplicationEvent> PesticideApplicationEvent.findAllPesticideApplicationEvents() {
        return entityManager().createQuery("SELECT o FROM PesticideApplicationEvent o", PesticideApplicationEvent.class).getResultList();
    }
    
    public static PesticideApplicationEvent PesticideApplicationEvent.findPesticideApplicationEvent(Integer id) {
        if (id == null) return null;
        return entityManager().find(PesticideApplicationEvent.class, id);
    }
    
    public static List<PesticideApplicationEvent> PesticideApplicationEvent.findPesticideApplicationEventEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PesticideApplicationEvent o", PesticideApplicationEvent.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PesticideApplicationEvent.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PesticideApplicationEvent.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PesticideApplicationEvent attached = PesticideApplicationEvent.findPesticideApplicationEvent(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PesticideApplicationEvent.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PesticideApplicationEvent.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PesticideApplicationEvent PesticideApplicationEvent.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PesticideApplicationEvent merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
