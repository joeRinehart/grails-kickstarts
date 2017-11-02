package grails.bootstrap.kickstart

import com.thirdstart.grails.kickstart.environment.ConfigurationChecker

class BootStrap {

    ConfigurationChecker configurationChecker

    def init = { servletContext ->
        configurationChecker.runStartupChecks()
    }
    def destroy = {
    }
}
