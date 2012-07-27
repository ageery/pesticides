package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.Applicator;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/applicators")
@Controller
@RooWebScaffold(path = "applicators", formBackingObject = Applicator.class)
@RooWebJson(jsonObject = Applicator.class)
public class ApplicatorController {
}
