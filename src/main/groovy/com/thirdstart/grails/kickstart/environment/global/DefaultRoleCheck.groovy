package com.thirdstart.grails.kickstart.environment.global

import com.thirdstart.grails.kickstart.environment.IStartupConfigurationCheck
import com.thirdstart.grails.kickstart.security.ApplicationRole
import grails.core.GrailsApplication
import groovy.util.logging.Log

@Log
/**
 * Makes sure any roles defined in kickstart.security.roles exist.
 */
class DefaultRoleCheck implements IStartupConfigurationCheck {

    GrailsApplication grailsApplication

    Boolean production = true
    Boolean test = true
    Boolean development = true

    void execute() {
        grailsApplication.config.kickstart?.security?.roles?.each{ String rolename ->
            log.info "Making sure a role named ${rolename} exists..."
            if ( !ApplicationRole.findByAuthority( rolename ) ) {
                new ApplicationRole( authority: rolename ).save(flush: true, failOnError: true)
                log.info "  -> it didn't, so it's been created for you."
            } else {
                log.info "  -> it existed."
            }
        }

    }
}
