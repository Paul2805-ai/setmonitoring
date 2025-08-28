package setmonitoring

class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller: "dashboard", action: "index")
        "/login"(controller: "login", action: "index")
        "/reporting"(controller: "reporting", action: "index")
        "/add"(controller: "dashboard", action: "save" )
        "/dashboard/create"(controller: "dashboard", action: "create")
        "/monitoring"(controller: "monitor", action: "index")
        "/edit/$id"(controller: "monitor", action: "edit")
        "/update/$id"(controller: "dashboard", action: "update")

//        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')

    }
}
