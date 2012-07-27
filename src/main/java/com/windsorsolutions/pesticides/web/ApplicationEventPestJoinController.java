package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.ApplicationEventPestJoin;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/applicationeventpestjoins")
@Controller
@RooWebScaffold(path = "applicationeventpestjoins", formBackingObject = ApplicationEventPestJoin.class)
@RooWebJson(jsonObject = ApplicationEventPestJoin.class)
public class ApplicationEventPestJoinController {
}
