// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.ApplicatorCertification;
import com.windsorsolutions.pesticides.web.ApplicatorCertificationController;
import java.util.List;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect ApplicatorCertificationController_Roo_Controller_Json {
    
    @RequestMapping(value = "/{id}", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> ApplicatorCertificationController.showJson(@PathVariable("id") Integer id) {
        ApplicatorCertification applicatorCertification = ApplicatorCertification.findApplicatorCertification(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (applicatorCertification == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(applicatorCertification.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> ApplicatorCertificationController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<ApplicatorCertification> result = ApplicatorCertification.findAllApplicatorCertifications();
        return new ResponseEntity<String>(ApplicatorCertification.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> ApplicatorCertificationController.createFromJson(@RequestBody String json) {
        ApplicatorCertification applicatorCertification = ApplicatorCertification.fromJsonToApplicatorCertification(json);
        applicatorCertification.persist();
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> ApplicatorCertificationController.createFromJsonArray(@RequestBody String json) {
        for (ApplicatorCertification applicatorCertification: ApplicatorCertification.fromJsonArrayToApplicatorCertifications(json)) {
            applicatorCertification.persist();
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> ApplicatorCertificationController.updateFromJson(@RequestBody String json) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        ApplicatorCertification applicatorCertification = ApplicatorCertification.fromJsonToApplicatorCertification(json);
        if (applicatorCertification.merge() == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> ApplicatorCertificationController.updateFromJsonArray(@RequestBody String json) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        for (ApplicatorCertification applicatorCertification: ApplicatorCertification.fromJsonArrayToApplicatorCertifications(json)) {
            if (applicatorCertification.merge() == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> ApplicatorCertificationController.deleteFromJson(@PathVariable("id") Integer id) {
        ApplicatorCertification applicatorCertification = ApplicatorCertification.findApplicatorCertification(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (applicatorCertification == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        applicatorCertification.remove();
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}
