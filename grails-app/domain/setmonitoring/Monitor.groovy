package setmonitoring

class Monitor {
    String id
    String name
    String url


    static constraints = {
        id blank: false
        name blank: false
        url blank: false, url: true
    }
}
