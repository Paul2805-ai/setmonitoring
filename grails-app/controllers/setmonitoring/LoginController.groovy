package setmonitoring

class LoginController {

    def index() {
        def dashboard = Dashboard.list('sort':'name','order':'asc')
        [sites:dashboard]
    }
}
