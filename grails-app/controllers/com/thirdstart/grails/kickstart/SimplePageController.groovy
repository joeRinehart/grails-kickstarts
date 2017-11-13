package com.thirdstart.grails.kickstart

import grails.plugin.springsecurity.annotation.Secured

// assumed that in a socially-authenticated app, your basic pages would be public.
@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
/**
 * A simple controller that allows you to serve pages that are bare-bones
 * content that just need the application's default model.
 */
class SimplePageController extends AbstractApplicationController {

    /**
     * Simple action to serve a page that gets the default model.
     */
    def index() {
        render(model: defaultModel, view: params.viewName ?: 'index')
    }

}
