package com.windsorsolutions.pesticides.web;

import com.windsorsolutions.pesticides.domain.SystemUser;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/systemusers")
@Controller
@RooWebScaffold(path = "systemusers", formBackingObject = SystemUser.class)
@RooWebJson(jsonObject = SystemUser.class)
public class SystemUserController {
}
