package passdentistry

class Admin {
    Long id
    Long version
    String email
    String password

    String toString() { "$email" }

    static constraints = {
        email email: true, unique: true
        password blank: false, password: true
    }
}