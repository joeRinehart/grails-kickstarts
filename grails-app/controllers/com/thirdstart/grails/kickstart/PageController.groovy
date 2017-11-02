package com.thirdstart.grails.kickstart

import grails.util.Environment

/**
 * A simple controller to provide things like home, about, contact, etc.
 * pages. UrlMappings has /index mapped to the 'index' action: you might
 * want to follow suit for other basic pages.
 */
class PageController extends AbstractApplicationController {

    /**
     * Homepage
     *
     * @return
     */
    def index() {
        return defaultModel
    }

    /**
     * Showing BootStrap elements - 404s in production
     * @return
     */
    def theme() {

        if (Environment.current == Environment.PRODUCTION ) {
            response.sendError(404)
        } else {
            return defaultModel
        }
    }

}
