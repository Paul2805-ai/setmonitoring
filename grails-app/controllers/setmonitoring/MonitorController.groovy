package setmonitoring

import grails.gorm.transactions.Transactional
import setmonitoring.Dashboard

class MonitorController {// Tampilkan form dan data yang sudah disimpan

    def index() {
        def dashboard = Dashboard.list('sort':'name','order':'asc')
        [sites:dashboard]
    }

    def edit(Long id) {
        def dashboard = Dashboard.findById(id)
        [sites: dashboard]
    }


}
