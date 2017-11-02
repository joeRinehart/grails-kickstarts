package grails.bootstrap.kickstart

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'page', action: 'index')
        "/theme"(controller: 'page', action: 'theme')

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
