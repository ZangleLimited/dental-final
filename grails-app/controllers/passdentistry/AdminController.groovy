package passdentistry

class AdminController {

    def index() {}

    def login = {
    }

    def doLogin = {
        def user = Admin.findWhere(email: params['email'], password: params['password'])
        session.user = user
        if (user)
            redirect(controller: 'question', action: 'index')
        else
            redirect(controller: 'admin', action: 'login')
    }
}
