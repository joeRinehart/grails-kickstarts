package com.thirdstart.grails.kickstart

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
