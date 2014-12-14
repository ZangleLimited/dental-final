import passdentistry.Admin

class BootStrap {

    def init = { servletContext ->
        addAdminIfAbsent()
        addCategoryIfAbsent("Paediatric Dentistry")
        addCategoryIfAbsent("Periodontology")
        addCategoryIfAbsent("Prothodontics")
        addCategoryIfAbsent("Oral Medicine")
        addCategoryIfAbsent("Oral Surgery")
        addCategoryIfAbsent("Orthodontics")
        addCategoryIfAbsent("Restorative Dentistry")
    }
    def destroy = {
    }

    def addCategoryIfAbsent(def categoryName) {
        if (!passdentistry.Category.findByName(categoryName)) {
            new passdentistry.Category(name: categoryName).save()
        }
    }

    def addAdminIfAbsent() {
        if (!Admin.findByEmail("admin@passdentistry.com")) {
            new Admin(email: "admin@passdentistry.com", password: "password").save()
        }
    }
}
