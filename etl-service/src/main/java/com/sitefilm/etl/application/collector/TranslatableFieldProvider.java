package com.sitefilm.etl.application.collector;

import java.util.Map;

public interface TranslatableFieldProvider {
    String locale();
    Map<String, String> fields();
}
