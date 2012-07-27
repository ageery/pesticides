// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.Applicator;
import com.windsorsolutions.pesticides.domain.ApplicatorCertification;
import com.windsorsolutions.pesticides.domain.SystemUser;
import com.windsorsolutions.pesticides.web.ApplicatorController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ApplicatorController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ApplicatorController.create(@Valid Applicator applicator, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, applicator);
            return "applicators/create";
        }
        uiModel.asMap().clear();
        applicator.persist();
        return "redirect:/applicators/" + encodeUrlPathSegment(applicator.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ApplicatorController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Applicator());
        return "applicators/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ApplicatorController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("applicator", Applicator.findApplicator(id));
        uiModel.addAttribute("itemId", id);
        return "applicators/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ApplicatorController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("applicators", Applicator.findApplicatorEntries(firstResult, sizeNo));
            float nrOfPages = (float) Applicator.countApplicators() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("applicators", Applicator.findAllApplicators());
        }
        return "applicators/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ApplicatorController.update(@Valid Applicator applicator, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, applicator);
            return "applicators/update";
        }
        uiModel.asMap().clear();
        applicator.merge();
        return "redirect:/applicators/" + encodeUrlPathSegment(applicator.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ApplicatorController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, Applicator.findApplicator(id));
        return "applicators/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ApplicatorController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Applicator applicator = Applicator.findApplicator(id);
        applicator.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/applicators";
    }
    
    void ApplicatorController.populateEditForm(Model uiModel, Applicator applicator) {
        uiModel.addAttribute("applicator", applicator);
        uiModel.addAttribute("applicatorcertifications", ApplicatorCertification.findAllApplicatorCertifications());
        uiModel.addAttribute("systemusers", SystemUser.findAllSystemUsers());
    }
    
    String ApplicatorController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}