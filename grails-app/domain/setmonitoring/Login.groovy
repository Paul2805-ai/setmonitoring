package setmonitoring

class Login {
    String id
    String username
    String password


    static constraints = {
        id nullable: false
        username nullable: false
        password nullable: true
    }
}
