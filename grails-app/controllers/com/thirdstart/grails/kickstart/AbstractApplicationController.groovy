package com.thirdstart.grails.kickstart

import com.thirdstart.grails.kickstart.security.ApplicationUser
import grails.plugin.springsecurity.SpringSecurityService

/**
 * Base controller providing conveniences.
 */
class AbstractApplicationController {

    SpringSecurityService springSecurityService

    /**
     * We still hit issues where the dynamically-wired "authenticatedUser" property goes missing
     * from controllers, and this gives us strong typing.
     *
     * @return
     */
    ApplicationUser getCurrentUser() {
        return springSecurityService.currentUser as ApplicationUser
    }

    Map getDefaultModel() {
        return [
            currentUser: currentUser
        ]
    }

}
