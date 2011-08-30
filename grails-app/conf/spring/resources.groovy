import multicom.MyCustomTenantResolver
import org.apache.commons.dbcp.BasicDataSource
// Place your Spring DSL code here
beans = {
  tenantResolver(MyCustomTenantResolver)
  
  dataSource(BasicDataSource) {
        driverClassName = "org.hsqldb.jdbcDriver"
        url = "jdbc:hsqldb:file:legal"
        username = "sa"
        password = ""
    }
  
  dataSource(BasicDataSource) {
        driverClassName = "org.hsqldb.jdbcDriver"
        url = "jdbc:hsqldb:file:sam"
        username = "sa"
        password = ""
    }
    
}
