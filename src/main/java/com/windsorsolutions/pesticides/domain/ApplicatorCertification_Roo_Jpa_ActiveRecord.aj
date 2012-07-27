// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.domain;

import com.windsorsolutions.pesticides.domain.ApplicatorCertification;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ApplicatorCertification_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ApplicatorCertification.entityManager;
    
    public static final EntityManager ApplicatorCertification.entityManager() {
        EntityManager em = new ApplicatorCertification().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ApplicatorCertification.countApplicatorCertifications() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ApplicatorCertification o", Long.class).getSingleResult();
    }
    
    public static List<ApplicatorCertification> ApplicatorCertification.findAllApplicatorCertifications() {
        return entityManager().createQuery("SELECT o FROM ApplicatorCertification o", ApplicatorCertification.class).getResultList();
    }
    
    public static ApplicatorCertification ApplicatorCertification.findApplicatorCertification(Integer id) {
        if (id == null) return null;
        return entityManager().find(ApplicatorCertification.class, id);
    }
    
    public static List<ApplicatorCertification> ApplicatorCertification.findApplicatorCertificationEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ApplicatorCertification o", ApplicatorCertification.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ApplicatorCertification.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ApplicatorCertification.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ApplicatorCertification attached = ApplicatorCertification.findApplicatorCertification(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ApplicatorCertification.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ApplicatorCertification.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ApplicatorCertification ApplicatorCertification.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ApplicatorCertification merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}