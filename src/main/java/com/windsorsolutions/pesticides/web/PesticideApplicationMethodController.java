package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.PesticideApplicationMethod;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pesticideapplicationmethods")
@Controller
@RooWebScaffold(path = "pesticideapplicationmethods", formBackingObject = PesticideApplicationMethod.class)
@RooWebJson(jsonObject = PesticideApplicationMethod.class)
public class PesticideApplicationMethodController {
}
