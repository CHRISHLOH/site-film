package org.sitefilm.contentservice.entity.projection;

import org.sitefilm.contentservice.entity.Career;


import java.util.Set;

public interface MinimalPersonProjection {
    Long getId();
    String getName();
    String getLastName();
    Set<Career> getCareers();
}
