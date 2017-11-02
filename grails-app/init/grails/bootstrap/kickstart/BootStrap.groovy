package grails.bootstrap.kickstart

import com.thirdstart.grails.kickstart.environment.ConfigurationChecker
import grails.core.GrailsApplication
import groovy.sql.Sql
import groovy.util.logging.Log

@Log
class BootStrap {

    Sql sql
    GrailsApplication grailsApplication

    ConfigurationChecker configurationChecker

    def init = { servletContext ->
        configurationChecker.runStartupChecks()
    }
    def destroy = {
    }
}
