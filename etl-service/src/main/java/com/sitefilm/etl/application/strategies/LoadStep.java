package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.strategies.context.ContentLoadContext;

public interface LoadStep {
    ContentLoadContext execute(ContentLoadContext context);
}
