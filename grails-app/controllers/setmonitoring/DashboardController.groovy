package setmonitoring

import grails.gorm.transactions.Transactional

class DashboardController {

    def index() {
        def sites = Dashboard.list(sort: 'name', order: 'asc')
        [sites: sites]
    }

    // Simpan data dari form ke database
    @Transactional
    def save() {
        def site = new Dashboard()
        site.name = params.name
        site.url = params.url
        site.status = "Unknown"
        site.lastChecked = new Date()
        site.note = params.note ?: ''


        println "SAVING SITE: name=${site.name}, url=${site.url}, note=${site.note}"

        if (site.validate() && site.save(flush: true)) {
            flash.message = "Data berhasil disimpan"
            redirect(action: "index")
        } else {

            println "ERRORS: ${site.errors}"
            flash.message = "Terjadi kesalahan saat menyimpan"
            render(view: "create", model: [site: site])
        }
    }

    def create() {
    }

    @Transactional
    def delete(Long id) {
        def site = Dashboard.get(id)
        if (site) {
            site.delete(flush: true)
            flash.message = "Data berhasil dihapus"
        } else {
            flash.message = "Data tidak ditemukan"
        }
        redirect(action: "index")
    }

    @Transactional
    def update() {
        println "ID: ${params.id}, NOTE: ${params.note}"
        def site = Dashboard.get(params.id)
        if (!site) {
            flash.message = "Data tidak ditemukan"
            redirect(action: "index")
            return
        }
        println "ID: ${site.id}, NOTE: ${site.note}"
        if(params.name == null) {
            site.name = site.name
        } else {
            site.name = params.name
        }
        if(params.url == null){
            site.url = site.url
        } else {
            site.url = params.url
        }
        site.url = site.url
        site.status = "Unknown"
        site.lastChecked = new Date()
        site.note = params.note

        if (site.save(flush: true)) {
            flash.message = "Data berhasil diperbarui"
        } else {
            flash.message = "Terjadi kesalahan saat memperbarui data"
        }

        redirect(action: "index")
    }




    }

