package spring

import com.thirdstart.grails.kickstart.environment.global.DefaultRoleCheck
import com.thirdstart.grails.kickstart.environment.nonproduction.DefaultUserCheck
import com.thirdstart.grails.kickstart.security.ApplicationUserPasswordEncoderListener

import com.thirdstart.grails.kickstart.environment.nonproduction.EnvironmentPropertiesCheck
import com.thirdstart.grails.kickstart.environment.ConfigurationChecker

import groovy.sql.Sql;

// Place your Spring DSL code here
beans = {

    // BOOTSTRAPPING

    /*
    TO ADD A NEW CONFIGURATION CHECK:
        1. Register your check as a bean: myCheck(MyCheck), wiring anything to it you need, like Sql (or autowire...)
        2. Add it to the 'checks' list of the configurationChecker bean
    */
    environmentPropertiesCheck(EnvironmentPropertiesCheck)
    defaultRoleCheck(DefaultRoleCheck) { bean ->
        bean.autowire = 'byName'
    }
    defaultUserCheck(DefaultUserCheck) { bean ->
        bean.autowire = 'byName'
    }

    configurationChecker(ConfigurationChecker) {
        checks = [
            ref('environmentPropertiesCheck'),
            ref('defaultRoleCheck'),
            ref('defaultUserCheck')
        ]
    }

    // COMMON

    /* A Groovy Sql instance tied to the datasource: because it's just plain handy and fast. */
    sql(Sql, ref('dataSource')){}


    // SPRING SECURITY
    applicationUserPasswordEncoderListener(ApplicationUserPasswordEncoderListener, ref('hibernateDatastore'))

}
