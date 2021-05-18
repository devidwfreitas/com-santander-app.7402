package org.simpleframework.xml.filter;

public class EnvironmentFilter implements Filter {
  private Filter filter;
  
  public EnvironmentFilter() {
    this(null);
  }
  
  public EnvironmentFilter(Filter paramFilter) {
    this.filter = paramFilter;
  }
  
  public String replace(String paramString) {
    String str = System.getenv(paramString);
    return (str != null) ? str : ((this.filter != null) ? this.filter.replace(paramString) : null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\filter\EnvironmentFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */