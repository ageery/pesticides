// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.Applicator;
import com.windsorsolutions.pesticides.domain.SystemUser;
import com.windsorsolutions.pesticides.web.SystemUserController;
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

privileged aspect SystemUserController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String SystemUserController.create(@Valid SystemUser systemUser, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, systemUser);
            return "systemusers/create";
        }
        uiModel.asMap().clear();
        systemUser.persist();
        return "redirect:/systemusers/" + encodeUrlPathSegment(systemUser.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String SystemUserController.createForm(Model uiModel) {
        populateEditForm(uiModel, new SystemUser());
        return "systemusers/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String SystemUserController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("systemuser", SystemUser.findSystemUser(id));
        uiModel.addAttribute("itemId", id);
        return "systemusers/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String SystemUserController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("systemusers", SystemUser.findSystemUserEntries(firstResult, sizeNo));
            float nrOfPages = (float) SystemUser.countSystemUsers() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("systemusers", SystemUser.findAllSystemUsers());
        }
        return "systemusers/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String SystemUserController.update(@Valid SystemUser systemUser, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, systemUser);
            return "systemusers/update";
        }
        uiModel.asMap().clear();
        systemUser.merge();
        return "redirect:/systemusers/" + encodeUrlPathSegment(systemUser.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String SystemUserController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, SystemUser.findSystemUser(id));
        return "systemusers/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String SystemUserController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        SystemUser systemUser = SystemUser.findSystemUser(id);
        systemUser.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/systemusers";
    }
    
    void SystemUserController.populateEditForm(Model uiModel, SystemUser systemUser) {
        uiModel.addAttribute("systemUser", systemUser);
        uiModel.addAttribute("applicators", Applicator.findAllApplicators());
    }
    
    String SystemUserController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
