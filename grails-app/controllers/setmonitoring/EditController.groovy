package setmonitoring

class EditController {

    def index() {
        def dashboard = Dashboard.list('sort':'name','order':'asc')
        [sites:dashboard]
    }
}
