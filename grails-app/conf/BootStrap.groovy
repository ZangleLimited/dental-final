import passdentistry.User

class BootStrap {

    def init = { servletContext ->
        new User(email:"admin@passdentistry.com",password:"password").save()
    }
    def destroy = {
    }
}
