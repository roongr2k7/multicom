package multicom

import grails.plugin.multitenant.core.TenantResolver;
import javax.servlet.http.HttpServletRequest;

public class MyCustomTenantResolver implements TenantResolver{
  
  
  public Integer getTenantFromRequest(HttpServletRequest inRequest){
    def session = inRequest.session
    Integer ret = session["ten"]?.toInteger()?:1
    println "getTenantFromRequest return: $ret"
    return ret
  }
}