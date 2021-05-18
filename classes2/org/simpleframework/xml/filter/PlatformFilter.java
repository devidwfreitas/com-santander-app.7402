package org.simpleframework.xml.filter;

import java.util.Map;

public class PlatformFilter extends StackFilter {
  public PlatformFilter() {
    this(null);
  }
  
  public PlatformFilter(Map paramMap) {
    push(new EnvironmentFilter());
    push(new SystemFilter());
    push(new MapFilter(paramMap));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\filter\PlatformFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */