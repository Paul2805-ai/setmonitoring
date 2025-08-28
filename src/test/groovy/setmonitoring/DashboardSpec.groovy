package setmonitoring

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class DashboardSpec extends Specification implements DomainUnitTest<Dashboard> {

     void "test domain constraints"() {
        when:
        Dashboard domain = new Dashboard()
        //TODO: Set domain props here

        then:
        domain.validate()
     }
}
