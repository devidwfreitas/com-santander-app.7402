package org.simpleframework.xml.filter;

public class SystemFilter implements Filter {
  private Filter filter;
  
  public SystemFilter() {
    this(null);
  }
  
  public SystemFilter(Filter paramFilter) {
    this.filter = paramFilter;
  }
  
  public String replace(String paramString) {
    String str = System.getProperty(paramString);
    return (str != null) ? str : ((this.filter != null) ? this.filter.replace(paramString) : null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\filter\SystemFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */