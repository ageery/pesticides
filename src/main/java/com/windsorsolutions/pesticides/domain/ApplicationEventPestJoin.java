package com.windsorsolutions.pesticides.domain;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierType = ApplicationEventPestJoinPK.class, versionField = "", table = "application_event_pest_join", schema = "public")
@RooDbManaged(automaticallyDelete = true)
@RooJson
public class ApplicationEventPestJoin {
}
