// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.domain;

import com.windsorsolutions.pesticides.domain.BusinessApplicatorCertification;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect BusinessApplicatorCertification_Roo_Json {
    
    public String BusinessApplicatorCertification.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static BusinessApplicatorCertification BusinessApplicatorCertification.fromJsonToBusinessApplicatorCertification(String json) {
        return new JSONDeserializer<BusinessApplicatorCertification>().use(null, BusinessApplicatorCertification.class).deserialize(json);
    }
    
    public static String BusinessApplicatorCertification.toJsonArray(Collection<BusinessApplicatorCertification> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<BusinessApplicatorCertification> BusinessApplicatorCertification.fromJsonArrayToBusinessApplicatorCertifications(String json) {
        return new JSONDeserializer<List<BusinessApplicatorCertification>>().use(null, ArrayList.class).use("values", BusinessApplicatorCertification.class).deserialize(json);
    }
    
}
