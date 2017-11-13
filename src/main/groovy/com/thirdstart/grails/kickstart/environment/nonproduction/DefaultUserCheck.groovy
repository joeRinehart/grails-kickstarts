package com.thirdstart.grails.kickstart.environment.nonproduction

import com.thirdstart.grails.kickstart.environment.IStartupConfigurationCheck
import com.thirdstart.grails.kickstart.security.ApplicationRole
import com.thirdstart.grails.kickstart.security.ApplicationUser
import com.thirdstart.grails.kickstart.security.ApplicationUserApplicationRole
import grails.core.GrailsApplication
import groovy.util.logging.Log

@Log
/**
 * Makes sure any users defined in kickstart.security.users exist.
 */
class DefaultUserCheck extends AbstractNonProductionConfigurationCheck {

    GrailsApplication grailsApplication

    void execute() {
        println "HEY: ${grailsApplication.config.kickstart}"
        grailsApplication.config.kickstart?.security?.defaultUsers?.each{ Map user ->
            log.info "Making sure a user named ${user.username} exists..."


            if ( !ApplicationUser.findByUsername( user.username ) ) {
                ApplicationUser newUser = new ApplicationUser(
                        enabled: true,
                        passwordExpired: false,
                        accountLocked: false,
                        accountExpired: false,
                        username: user.username,
                        password: user.password
                ).save(failOnError: true, flush: true)

                user.roles.each{ String rolename ->
                    new ApplicationUserApplicationRole(
                            applicationUser: newUser,
                            applicationRole: ApplicationRole.findByAuthority( rolename )
                    ).save(failOnError: true, flush: true)
                }

                log.info "  -> it didn't, so it's been created for you."
            } else {
                log.info "  -> it existed."
            }
        }

    }
}
