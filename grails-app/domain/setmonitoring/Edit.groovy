package setmonitoring

class Edit {
    String name
    String url

    static constraints = {
        name blank: false
        url blank: false, url: true
    }
}
