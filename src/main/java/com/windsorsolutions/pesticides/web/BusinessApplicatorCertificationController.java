package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.BusinessApplicatorCertification;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/businessapplicatorcertifications")
@Controller
@RooWebScaffold(path = "businessapplicatorcertifications", formBackingObject = BusinessApplicatorCertification.class)
@RooWebJson(jsonObject = BusinessApplicatorCertification.class)
public class BusinessApplicatorCertificationController {
}
