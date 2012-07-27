// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.domain;

import com.windsorsolutions.pesticides.domain.ApplicatorCertification;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect ApplicatorCertification_Roo_Json {
    
    public String ApplicatorCertification.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static ApplicatorCertification ApplicatorCertification.fromJsonToApplicatorCertification(String json) {
        return new JSONDeserializer<ApplicatorCertification>().use(null, ApplicatorCertification.class).deserialize(json);
    }
    
    public static String ApplicatorCertification.toJsonArray(Collection<ApplicatorCertification> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<ApplicatorCertification> ApplicatorCertification.fromJsonArrayToApplicatorCertifications(String json) {
        return new JSONDeserializer<List<ApplicatorCertification>>().use(null, ArrayList.class).use("values", ApplicatorCertification.class).deserialize(json);
    }
    
}
