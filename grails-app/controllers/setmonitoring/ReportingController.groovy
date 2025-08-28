package setmonitoring

class ReportingController {

    def index() {
        def dashboard = Dashboard.list('sort':'name','order':'asc')
        [sites:dashboard]
    }
}
