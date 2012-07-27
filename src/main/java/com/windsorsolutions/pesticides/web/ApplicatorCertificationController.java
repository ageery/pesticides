package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.ApplicatorCertification;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/applicatorcertifications")
@Controller
@RooWebScaffold(path = "applicatorcertifications", formBackingObject = ApplicatorCertification.class)
@RooWebJson(jsonObject = ApplicatorCertification.class)
public class ApplicatorCertificationController {
}
