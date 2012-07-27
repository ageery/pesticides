// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.domain;

import com.windsorsolutions.pesticides.domain.ApplicationEventPestJoin;
import com.windsorsolutions.pesticides.domain.ApplicatorCertification;
import com.windsorsolutions.pesticides.domain.BusinessApplicatorCertification;
import com.windsorsolutions.pesticides.domain.Pesticide;
import com.windsorsolutions.pesticides.domain.PesticideApplicationEvent;
import com.windsorsolutions.pesticides.domain.PesticideApplicationMethod;
import com.windsorsolutions.pesticides.domain.PesticideApplicationUnit;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect PesticideApplicationEvent_Roo_DbManaged {
    
    @OneToMany(mappedBy = "applicationEventId")
    private Set<ApplicationEventPestJoin> PesticideApplicationEvent.applicationEventPestJoins;
    
    @ManyToOne
    @JoinColumn(name = "applicator_certification_id", referencedColumnName = "id", nullable = false)
    private ApplicatorCertification PesticideApplicationEvent.applicatorCertificationId;
    
    @ManyToOne
    @JoinColumn(name = "business_applicator_certification_id", referencedColumnName = "id")
    private BusinessApplicatorCertification PesticideApplicationEvent.businessApplicatorCertificationId;
    
    @ManyToOne
    @JoinColumn(name = "pesticide_id", referencedColumnName = "id", nullable = false)
    private Pesticide PesticideApplicationEvent.pesticideId;
    
    @ManyToOne
    @JoinColumn(name = "application_method_id", referencedColumnName = "id", nullable = false)
    private PesticideApplicationMethod PesticideApplicationEvent.applicationMethodId;
    
    @ManyToOne
    @JoinColumn(name = "unit_id", referencedColumnName = "id", nullable = false)
    private PesticideApplicationUnit PesticideApplicationEvent.unitId;
    
    @Column(name = "application_date")
    @NotNull
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date PesticideApplicationEvent.applicationDate;
    
    @Column(name = "quantity", precision = 17, scale = 17)
    @NotNull
    private Double PesticideApplicationEvent.quantity;
    
    @Column(name = "dosage", length = 255)
    private String PesticideApplicationEvent.dosage;
    
    @Column(name = "street1", length = 127)
    @NotNull
    private String PesticideApplicationEvent.street1;
    
    @Column(name = "street2", length = 127)
    private String PesticideApplicationEvent.street2;
    
    @Column(name = "city", length = 31)
    @NotNull
    private String PesticideApplicationEvent.city;
    
    @Column(name = "state", length = 2)
    @NotNull
    private String PesticideApplicationEvent.state;
    
    @Column(name = "zip", length = 10)
    @NotNull
    private String PesticideApplicationEvent.zip;
    
    @Column(name = "description", length = 1023)
    private String PesticideApplicationEvent.description;
    
    @Column(name = "latitude", precision = 17, scale = 17)
    private Double PesticideApplicationEvent.latitude;
    
    @Column(name = "longitude", precision = 17, scale = 17)
    private Double PesticideApplicationEvent.longitude;
    
    public Set<ApplicationEventPestJoin> PesticideApplicationEvent.getApplicationEventPestJoins() {
        return applicationEventPestJoins;
    }
    
    public void PesticideApplicationEvent.setApplicationEventPestJoins(Set<ApplicationEventPestJoin> applicationEventPestJoins) {
        this.applicationEventPestJoins = applicationEventPestJoins;
    }
    
    public ApplicatorCertification PesticideApplicationEvent.getApplicatorCertificationId() {
        return applicatorCertificationId;
    }
    
    public void PesticideApplicationEvent.setApplicatorCertificationId(ApplicatorCertification applicatorCertificationId) {
        this.applicatorCertificationId = applicatorCertificationId;
    }
    
    public BusinessApplicatorCertification PesticideApplicationEvent.getBusinessApplicatorCertificationId() {
        return businessApplicatorCertificationId;
    }
    
    public void PesticideApplicationEvent.setBusinessApplicatorCertificationId(BusinessApplicatorCertification businessApplicatorCertificationId) {
        this.businessApplicatorCertificationId = businessApplicatorCertificationId;
    }
    
    public Pesticide PesticideApplicationEvent.getPesticideId() {
        return pesticideId;
    }
    
    public void PesticideApplicationEvent.setPesticideId(Pesticide pesticideId) {
        this.pesticideId = pesticideId;
    }
    
    public PesticideApplicationMethod PesticideApplicationEvent.getApplicationMethodId() {
        return applicationMethodId;
    }
    
    public void PesticideApplicationEvent.setApplicationMethodId(PesticideApplicationMethod applicationMethodId) {
        this.applicationMethodId = applicationMethodId;
    }
    
    public PesticideApplicationUnit PesticideApplicationEvent.getUnitId() {
        return unitId;
    }
    
    public void PesticideApplicationEvent.setUnitId(PesticideApplicationUnit unitId) {
        this.unitId = unitId;
    }
    
    public Date PesticideApplicationEvent.getApplicationDate() {
        return applicationDate;
    }
    
    public void PesticideApplicationEvent.setApplicationDate(Date applicationDate) {
        this.applicationDate = applicationDate;
    }
    
    public Double PesticideApplicationEvent.getQuantity() {
        return quantity;
    }
    
    public void PesticideApplicationEvent.setQuantity(Double quantity) {
        this.quantity = quantity;
    }
    
    public String PesticideApplicationEvent.getDosage() {
        return dosage;
    }
    
    public void PesticideApplicationEvent.setDosage(String dosage) {
        this.dosage = dosage;
    }
    
    public String PesticideApplicationEvent.getStreet1() {
        return street1;
    }
    
    public void PesticideApplicationEvent.setStreet1(String street1) {
        this.street1 = street1;
    }
    
    public String PesticideApplicationEvent.getStreet2() {
        return street2;
    }
    
    public void PesticideApplicationEvent.setStreet2(String street2) {
        this.street2 = street2;
    }
    
    public String PesticideApplicationEvent.getCity() {
        return city;
    }
    
    public void PesticideApplicationEvent.setCity(String city) {
        this.city = city;
    }
    
    public String PesticideApplicationEvent.getState() {
        return state;
    }
    
    public void PesticideApplicationEvent.setState(String state) {
        this.state = state;
    }
    
    public String PesticideApplicationEvent.getZip() {
        return zip;
    }
    
    public void PesticideApplicationEvent.setZip(String zip) {
        this.zip = zip;
    }
    
    public String PesticideApplicationEvent.getDescription() {
        return description;
    }
    
    public void PesticideApplicationEvent.setDescription(String description) {
        this.description = description;
    }
    
    public Double PesticideApplicationEvent.getLatitude() {
        return latitude;
    }
    
    public void PesticideApplicationEvent.setLatitude(Double latitude) {
        this.latitude = latitude;
    }
    
    public Double PesticideApplicationEvent.getLongitude() {
        return longitude;
    }
    
    public void PesticideApplicationEvent.setLongitude(Double longitude) {
        this.longitude = longitude;
    }
    
}