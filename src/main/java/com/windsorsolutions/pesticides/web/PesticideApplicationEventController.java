package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.PesticideApplicationEvent;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pesticideapplicationevents")
@Controller
@RooWebScaffold(path = "pesticideapplicationevents", formBackingObject = PesticideApplicationEvent.class)
@RooWebJson(jsonObject = PesticideApplicationEvent.class)
public class PesticideApplicationEventController {
}
