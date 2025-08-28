package setmonitoring

class Dashboard {
    String name
    String url
    String status = "Unknown"
    Date lastChecked
    String note

    static constraints = {
        name blank: false
        url blank: false, url: true
        status nullable: true
        lastChecked nullable: true
        note nullable: true
    }
}