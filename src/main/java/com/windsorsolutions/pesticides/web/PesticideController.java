package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.Pesticide;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pesticides")
@Controller
@RooWebScaffold(path = "pesticides", formBackingObject = Pesticide.class)
@RooWebJson(jsonObject = Pesticide.class)
public class PesticideController {
}
