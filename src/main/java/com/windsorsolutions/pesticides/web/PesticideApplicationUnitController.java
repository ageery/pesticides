package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.PesticideApplicationUnit;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pesticideapplicationunits")
@Controller
@RooWebScaffold(path = "pesticideapplicationunits", formBackingObject = PesticideApplicationUnit.class)
@RooWebJson(jsonObject = PesticideApplicationUnit.class)
public class PesticideApplicationUnitController {
}
