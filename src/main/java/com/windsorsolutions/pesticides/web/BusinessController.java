package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.Business;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/businesses")
@Controller
@RooWebScaffold(path = "businesses", formBackingObject = Business.class)
@RooWebJson(jsonObject = Business.class)
public class BusinessController {
}
