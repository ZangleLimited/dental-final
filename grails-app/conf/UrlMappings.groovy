class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/site/index", controller: "site", action: "index")
        "/admin"(view:"/question/index", controller: "question", action: "index")
        "500"(view:'/error')
	}
}
