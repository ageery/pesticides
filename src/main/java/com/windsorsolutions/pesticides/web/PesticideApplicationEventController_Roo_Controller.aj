// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.ApplicationEventPestJoin;
import com.windsorsolutions.pesticides.domain.ApplicatorCertification;
import com.windsorsolutions.pesticides.domain.BusinessApplicatorCertification;
import com.windsorsolutions.pesticides.domain.Pesticide;
import com.windsorsolutions.pesticides.domain.PesticideApplicationEvent;
import com.windsorsolutions.pesticides.domain.PesticideApplicationMethod;
import com.windsorsolutions.pesticides.domain.PesticideApplicationUnit;
import com.windsorsolutions.pesticides.web.PesticideApplicationEventController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PesticideApplicationEventController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PesticideApplicationEventController.create(@Valid PesticideApplicationEvent pesticideApplicationEvent, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, pesticideApplicationEvent);
            return "pesticideapplicationevents/create";
        }
        uiModel.asMap().clear();
        pesticideApplicationEvent.persist();
        return "redirect:/pesticideapplicationevents/" + encodeUrlPathSegment(pesticideApplicationEvent.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PesticideApplicationEventController.createForm(Model uiModel) {
        populateEditForm(uiModel, new PesticideApplicationEvent());
        return "pesticideapplicationevents/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PesticideApplicationEventController.show(@PathVariable("id") Integer id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("pesticideapplicationevent", PesticideApplicationEvent.findPesticideApplicationEvent(id));
        uiModel.addAttribute("itemId", id);
        return "pesticideapplicationevents/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PesticideApplicationEventController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("pesticideapplicationevents", PesticideApplicationEvent.findPesticideApplicationEventEntries(firstResult, sizeNo));
            float nrOfPages = (float) PesticideApplicationEvent.countPesticideApplicationEvents() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("pesticideapplicationevents", PesticideApplicationEvent.findAllPesticideApplicationEvents());
        }
        addDateTimeFormatPatterns(uiModel);
        return "pesticideapplicationevents/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PesticideApplicationEventController.update(@Valid PesticideApplicationEvent pesticideApplicationEvent, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, pesticideApplicationEvent);
            return "pesticideapplicationevents/update";
        }
        uiModel.asMap().clear();
        pesticideApplicationEvent.merge();
        return "redirect:/pesticideapplicationevents/" + encodeUrlPathSegment(pesticideApplicationEvent.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PesticideApplicationEventController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, PesticideApplicationEvent.findPesticideApplicationEvent(id));
        return "pesticideapplicationevents/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PesticideApplicationEventController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PesticideApplicationEvent pesticideApplicationEvent = PesticideApplicationEvent.findPesticideApplicationEvent(id);
        pesticideApplicationEvent.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/pesticideapplicationevents";
    }
    
    void PesticideApplicationEventController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("pesticideApplicationEvent_applicationdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void PesticideApplicationEventController.populateEditForm(Model uiModel, PesticideApplicationEvent pesticideApplicationEvent) {
        uiModel.addAttribute("pesticideApplicationEvent", pesticideApplicationEvent);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("applicationeventpestjoins", ApplicationEventPestJoin.findAllApplicationEventPestJoins());
        uiModel.addAttribute("applicatorcertifications", ApplicatorCertification.findAllApplicatorCertifications());
        uiModel.addAttribute("businessapplicatorcertifications", BusinessApplicatorCertification.findAllBusinessApplicatorCertifications());
        uiModel.addAttribute("pesticides", Pesticide.findAllPesticides());
        uiModel.addAttribute("pesticideapplicationmethods", PesticideApplicationMethod.findAllPesticideApplicationMethods());
        uiModel.addAttribute("pesticideapplicationunits", PesticideApplicationUnit.findAllPesticideApplicationUnits());
    }
    
    String PesticideApplicationEventController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
