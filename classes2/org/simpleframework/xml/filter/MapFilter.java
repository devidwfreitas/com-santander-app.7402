package org.simpleframework.xml.filter;

import java.util.Map;

public class MapFilter implements Filter {
  private Filter filter;
  
  private Map map;
  
  public MapFilter(Map paramMap) {
    this(paramMap, null);
  }
  
  public MapFilter(Map paramMap, Filter paramFilter) {
    this.filter = paramFilter;
    this.map = paramMap;
  }
  
  public String replace(String paramString) {
    String str2 = null;
    if (this.map != null) {
      str1 = (String)this.map.get(paramString);
    } else {
      str1 = null;
    } 
    if (str1 != null)
      return str1.toString(); 
    String str1 = str2;
    return (this.filter != null) ? this.filter.replace(paramString) : str1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\filter\MapFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */