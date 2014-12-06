package passdentistry

class UserController {

    def index() {}

    def login = {
    }

    def doLogin = {
        def user = User.findWhere(email:params['email'], password:params['password'])
        session.user = user
        if (user)
            redirect(controller:'category',action:'index')
        else
            redirect(controller:'user',action:'login')
    }
}
