import passdentistry.User

class BootStrap {

    def init = { servletContext ->
        new User(email:"admin@passdentistry.com",password:"password").save()
        new passdentistry.Category(name: "Paediatric Dentistry").save()
        new passdentistry.Category(name: "Periodontology").save()
        new passdentistry.Category(name: "Prothodontics").save()
        new passdentistry.Category(name: "Oral Medicine").save()
        new passdentistry.Category(name: "Oral Surgery").save()
        new passdentistry.Category(name: "Orthodontics").save()
        new passdentistry.Category(name: "Restorative Dentistry").save()
    }
    def destroy = {
    }
}
